import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;
import java.net.*;

import org.newsclub.net.unix.AFUNIXServerSocket;
import org.newsclub.net.unix.AFUNIXSocketAddress;

public class Solution extends Thread {
    
    Socket sock;

    public Solution(Socket s) {
        this.sock = s;
    }

    public void run() {
        try {
            InputStream is = sock.getInputStream();
            OutputStream os = sock.getOutputStream();
            byte[] buf = new byte[10000];
            int read;
            while ((read = is.read(buf)) != -1) {
                os.write(buf);
                System.out.println(buf);
            }
            sock.close();
        } catch (Exception e) {}
    }

    public static void main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution. */
        try {
            AFUNIXServerSocket ss = AFUNIXServerSocket.newInstance();
            ss.bind(new AFUNIXSocketAddress(new File("./socket")));
            while (true) {
                Solution s1 = new Solution(ss.accept());
                s1.start();
            }
        } catch (Exception e) {}
    }
}
