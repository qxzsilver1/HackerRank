import java.io.*;
import java.util.*;

public class Solution {

    public static void main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution. */
        Scanner sc = new Scanner(System.in);
        int T = sc.nextInt();
        
        for (int i = 0; i < T; i++) {
            int n = sc.nextInt();
            int m = sc.nextInt();
            
            int[] arr = new int[n];
            
            for (int j = 0; j < n; j++)
                arr[j] = sc.nextInt();
            
            if (winning(m, arr, 0))
                System.out.println("YES");
            else
                System.out.println("NO");
        }
    }
    
    private static boolean winning(int m, int[] arr, int i) {
        if (i < 0 || arr[i] == 1)
            return false;
        
        if (i == arr.length - 1 || i + m > arr.length - 1)
            return true;
        
        arr[i] = 1;
        
        return winning(m, arr, i+1) || winning(m, arr, i-1) || winning(m, arr, i+m);
    }
}
