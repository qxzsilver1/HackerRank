import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution. */
        Scanner input = new Scanner(System.in);
		int n = input.nextInt();
        
		Map xToY = new HashMap<Integer, Integer>();
		
		for(int i = 1; i <= n; i++)
		{
			xToY.put(input.nextInt(), i);
		}
		
		for(int i = 1; i <= xToY.size(); i++)
		{
			System.out.println(xToY.get(i));
		}
    }
}
