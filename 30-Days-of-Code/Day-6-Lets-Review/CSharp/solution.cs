using System;
using System.Collections.Generic;
using System.IO;
class Solution {
    static void Main(String[] args) {
        int num = int.Parse(Console.In.ReadLine());
        
        string firstHalf = "";
        string secondHalf = "";
        
        for (int i = 0; i < num; i++) {
            string s = Console.ReadLine();
            
            for (int j = 0; j < s.Length; j++) {
                if (j % 2 == 0)
                    firstHalf += s[j];
                else
                    secondHalf += s[j];
            }
            
            Console.WriteLine(firstHalf + " " + secondHalf);
            
            firstHalf = "";
            secondHalf = "";
        }
    }
}
