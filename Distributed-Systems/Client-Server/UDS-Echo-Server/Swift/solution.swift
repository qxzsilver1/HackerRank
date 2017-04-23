import Foundation;

// Enter your code here 
//let GlobalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)


class EchoServer {

//    let localQueue = dispatch_queue_create("\(EchoServer.self)",
//                                           DISPATCH_QUEUE_CONCURRENT)
    var serverSocket: Int32
    var clientsAccepted: [Int32 : dispatch_source_t]
    var semaphore: dispatch_semaphore_t  // for atomic access to dict
    init() {
        serverSocket = -1
        clientsAccepted = [:]
        semaphore = dispatch_semaphore_create(1)
    }

    deinit {
        dispatch_release(semaphore)
    }

    func start(port: UInt16) {
        var error: Int32 = -1
        serverSocket = socket(AF_INET, SOCK_STREAM, 0)
        if serverSocket != -1 {
            var flag: Int32 = 1
            var len  = socklen_t(sizeof(Int32))
            setsockopt(serverSocket, SOL_SOCKET, SO_REUSEADDR, &flag, len)
        } else {
            /* handle error and */ return
        }

        var addrIn = sockaddr_in(port: port)
        var len = socklen_t(addrIn.sin_len)
        var addr = sockaddr(addrIn)

        error = bind(serverSocket, &addr, len)
        if error < 0 {
            println("failed to bind. code = \(error)")
            close(serverSocket)
            return
        }

        error = listen(serverSocket, 4)
        if error < 0 {
            println("failed to listen. code = \(error)")
            close(serverSocket)
            return
        }

        let src = my_create_disp_src(serverSocket)
//        var src = dispatch_source_create(DISPATCH_SOURCE_TYPE_READ,
//                    UInt(serverSocket), 0, GlobalQueue)
        dispatch_source_set_event_handler(src, acceptClient)
        dispatch_resume(src)
    }

    func acceptClient() {
        var addrIn = sockaddr_in()
        var addr = sockaddr(addrIn)
        var len = socklen_t(addrIn.sin_len)

        let sock = accept(serverSocket, &addr, &len)
        if sock < 0 {/* error...*/ return}

        addrIn = sockaddr_in(addr) // copy back
        let ipStr = addrIn.addressString
        let port = addrIn.sin_port
        println("Accepted client(=\(ipStr):\(port))")

//        var bufSize = 20
//        var buf = [Int8](count: 20, repeatedValue: 0)
//        getnameinfo(&addr, socklen_t(addr.sa_len), &buf, socklen_t(bufSize), nil, 0, NI_NAMEREQD)
//        var clientName = String.fromCString(buf)
//        println("Accepted client(=\(clientName!):\(port))")
        var csrc = my_create_disp_src(sock)
//        var csrc = dispatch_source_create(DISPATCH_SOURCE_TYPE_READ,
//                                UInt(sock), 0, GlobalQueue)
        dispatch_semaphore_wait(semaphore, DISPATCH_TIME_FOREVER)
        clientsAccepted[sock] = csrc
        dispatch_semaphore_signal(semaphore)

        dispatch_source_set_event_handler(csrc, readAndEchoBack(sock))
        dispatch_resume(csrc)
    }

    func readAndEchoBack(sock: Int32) -> () -> () {
        return {
            dispatch_async(GlobalQueue) {
                let bufSize = 64
                var buf = [UInt8](count: bufSize, repeatedValue: 0)
                let size = read(sock, &buf, UInt(bufSize))

                if size > 0 {
                    write(sock, &buf, UInt(size))
                    return
                } else if size == 0 {
                    self.disconnectClient(sock)
                } else { // size == -1
                    /* somethig wrong happned...*/
                }
            }
        }
    }

    func disconnectClient(client: Int32) {

        let csrc = removeClient(client)
        if let src = csrc {
            dispatch_source_cancel(csrc)
            dispatch_release(csrc)
            println("freed dispatch_source for client=\(client)")
            let ret = close(client)
            if ret == 0 {
                println("disconnect a client = \(client)")
            } else {
                println("socket(=\(client)) has been already closed!!")
            }
        } else {
            println("no dispatch_source for client=\(client) !!")
        }

    }

    func removeClient(clientSock: Int32) -> dispatch_source_t? {
        dispatch_semaphore_wait(self.semaphore, DISPATCH_TIME_FOREVER)
        let src = self.clientsAccepted.removeValueForKey(clientSock)
        dispatch_semaphore_signal(self.semaphore)
        return src
    }
}
