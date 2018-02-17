#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */   
    int result = 0;
    int temp = 0;
    int n;
    cin >> n;
    
    for (int i = 0; i <n; i++) {
        cin >> temp;
        result += temp;
    }
    
    cout << result << endl;
    
    return 0;
}
