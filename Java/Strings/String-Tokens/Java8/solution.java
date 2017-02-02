import java.io.*;
import java.util.*;
public class Solution {

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        String s = scan.nextLine();
        // Write your code here.
        s = s.trim();
        if (s.length()>400000 || s == null){
            return ;
        } 
        else if (s.length() == 0){
            System.out.println(0);
            return ;
        }
        else{   
            String[] words = s.split("[!,?.*_'@\\ ]+");
            int count = words.length;
            System.out.println(count);
            for(String word : words){
                System.out.println(word);
            }
        }
        scan.close();
    }
}
