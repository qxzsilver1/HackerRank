import socket
import sys
import os
import threading

server_address = './socket'

def communicate(connection):
    data = ''
    while 1:
        data = connection.recv(4096)
        if not data:
            break
        connection.send(data)
    connection.close()

sock = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
sock.bind(server_address)

sock.listen(1)

while 1:
    connection, client_address = sock.accept()
    t = threading.Thread(target=communicate, args=(connection,))
    t.start()

sock.close()
