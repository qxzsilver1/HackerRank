import java.io.*;
import java.util.*;

public class Solution {

    public static void main(String[] args) {
        
        Scanner sc=new Scanner(System.in);
        String A=sc.next();
        String B=sc.next();
        /* Enter your code here. Print output to STDOUT. */
        
        System.out.println(A.length()+B.length());
        
        System.out.println(A.compareTo(B) > 0 ? "Yes" : "No");
        
        String A_capitalized = A.substring(0, 1).toUpperCase() + A.substring(1);
        String B_capitalized = B.substring(0, 1).toUpperCase() + B.substring(1);
        
        System.out.println(A_capitalized + " " + B_capitalized);
        
    }
}
