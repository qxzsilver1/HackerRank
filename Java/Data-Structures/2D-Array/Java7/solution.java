import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int arr[][] = new int[6][6];
        int maxSum = -63; //since each element is an integer between [-9, 9], min possible value is 7 * -9 = -63
        for(int i=0; i < 6; i++){
            for(int j=0; j < 6; j++){
                arr[i][j] = in.nextInt();
                
                if (i > 1 && j > 1) {
                    int sum = arr[i-2][j-2] + arr[i-2][j-1] + arr[i-2][j]
                                           + arr[i-1][j-1]
                              + arr[i][j-2] + arr[i][j-1]   + arr[i][j];
                    if (sum > maxSum) maxSum = sum;
                }
            }
        }
        
        System.out.println(maxSum);
    }
}
