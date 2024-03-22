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
        for(int arr_i=0; arr_i < 6; arr_i++){
            for(int arr_j=0; arr_j < 6; arr_j++){
                arr[arr_i][arr_j] = in.nextInt();
                
                if (arr_i > 1 && arr_j > 1) {
                    int sum = arr[arr_i-2][arr_j-2] + arr[arr_i-2][arr_j-1] + arr[arr_i-2][arr_j]
                                           + arr[arr_i-1][arr_j-1]
                              + arr[arr_i][arr_j-2] + arr[arr_i][arr_j-1]   + arr[arr_i][arr_j];
                    if (sum > maxSum) maxSum = sum;
                }
            }
        }
        
        System.out.println(maxSum);
    }
}
