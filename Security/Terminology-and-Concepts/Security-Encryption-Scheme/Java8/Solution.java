import java.io.*;
import java.util.*;

public class Solution {

    public static void main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution. */
        Scanner sc = new Scanner (System.in);

        int n = sc.nextInt();
        sc.close();
        
        int ans = 1;
        for (int i = 1; i <= n; i++) {
            ans*=i;
        } 

        System.out.println(ans);
    }
}

