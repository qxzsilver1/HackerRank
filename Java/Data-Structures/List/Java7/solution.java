import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution. */
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        
        List<Integer> list = new ArrayList<Integer>();
        
        for (int i = 0; i < n; i++) {
            list.add(sc.nextInt());
        }
        
        int q = sc.nextInt();
        for (int i = 0; i < q; i++) {
            String query = sc.next();
            if (query.equals("Insert")) {		    		  
                int x = sc.nextInt();
                int y = sc.nextInt();
                list.add(x, y);
            }
            else if (query.equals("Delete")) {
                int x = sc.nextInt();
                list.remove(x);
            }
        }
        
        sc.close();
        
        for (int i = 0; i < list.size(); i++){
            System.out.print(list.get(i)+" ");
        }
    }
}
