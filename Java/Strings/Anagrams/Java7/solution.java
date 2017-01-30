import java.io.*;
import java.util.*;

public class Solution {
    static boolean isAnagram(String a, String b) {
        
        // Complete the function by writing your code here.
        char arrayA[]=a.toLowerCase().toCharArray(); 
        char arrayB[]=b.toLowerCase().toCharArray();

        Arrays.sort(arrayA);
        Arrays.sort(arrayB);

        return Arrays.equals(arrayA,arrayB);
        
    }
    
    public static void main(String[] args) {
    
        Scanner scan = new Scanner(System.in);
        String a = scan.next();
        String b = scan.next();
        scan.close();
        boolean ret = isAnagram(a, b);
        System.out.println( (ret) ? "Anagrams" : "Not Anagrams" );
    }
}
