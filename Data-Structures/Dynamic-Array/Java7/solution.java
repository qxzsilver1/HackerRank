import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution. */
        Scanner sc = new Scanner(System.in);
        int lastans =0;
        int N = sc.nextInt();
        int Q = sc.nextInt();
        int tag, x, y, index;

        ArrayList<Integer>[] list = new ArrayList[N];

        while(Q-->0){
            tag = sc.nextInt();
            x = sc.nextInt();
            y = sc.nextInt();
            index = (x^lastans)%N;

            switch (tag) {

                case 1:
                    if (list[index] == null) {
                        ArrayList<Integer> myList = new ArrayList<>();
                        myList.add(y);
                        list[index] = myList;
                    } else
                        list[index].add(y);
                    break;
                case 2:
                    System.out.println(lastans = list[index].get(y % list[index].size()));
                    break;
            }
        }
    }
}
