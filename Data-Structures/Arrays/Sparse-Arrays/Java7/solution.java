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
        Map<String, Integer> stringCounts = new HashMap<>(n);
        
        for (int i = 0; i < n; i++) {
            String input = sc.next();
            
            Integer count = stringCounts.get(input);
            
            if (count == null)
                count = 0;
            
            count++;
            stringCounts.put(input, count);
        }
        
        int q = sc.nextInt();
        
        for (int i = 0; i < q; i++) {
            String query = sc.next();
            
            Integer count = stringCounts.get(query);
            
            if (count == null)
                count = 0;
            
            System.out.println(count);
        }
    }
}
