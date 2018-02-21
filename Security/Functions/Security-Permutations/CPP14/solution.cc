#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */   
    int n;
    cin >> n;
    
    int fn[n+1];
    
    fn[0] = 0;
    
    for(int i = 1; i <= n; i++) {
        cin >> fn[i];
    }
    
    for(int i = 1; i <= n; i++) {
        cout << fn[fn[i]] << endl;
    }
    
    return 0;
}
