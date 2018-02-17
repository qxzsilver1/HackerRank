import java.io.*;
import java.util.*;

public class Solution {

    public static void main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution. */
        Scanner sc = new Scanner(System.in);
        int x = sc.nextInt();        
        int[] input = new int[x];

        for (int i = 0; i < x; i++) {
            input[i] = sc.nextInt();
        }
        
        Arrays.sort(input);

        int count = 0;

       for (int j = 0; j < x; j++) {
           if (input[j] != j+1) {
               count++;
               break;
           }
       }

        if (count == 0)
            System.out.println("YES");
        else 
            System.out.println("NO");
    }
}
