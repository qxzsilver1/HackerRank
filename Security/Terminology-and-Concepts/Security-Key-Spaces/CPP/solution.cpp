#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */ 
    string num; cin >> num;
    int shift; cin >> shift;
    
    for(char a : num)
        cout << (((char)(a+shift)>'9')? (char)(a+shift - 10): (char)(a+shift));  
    return 0;
}
