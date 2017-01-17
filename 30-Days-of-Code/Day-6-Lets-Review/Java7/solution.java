import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        sc.nextLine();
        
        for (int i = 0; i < n; i++) {
            String s = sc.nextLine();
            
            String firstHalf = "";
            String secondHalf = "";
            
            for (int j = 0; j < s.length(); j++) {
                if (j % 2 == 0)
                    firstHalf += s.charAt(j);
                else
                    secondHalf += s.charAt(j);
            }
            
            System.out.println(firstHalf + " " + secondHalf);
            
            firstHalf = "";
            secondHalf = "";
        }
        
        sc.close();
    }
}
