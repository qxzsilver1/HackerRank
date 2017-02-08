#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */
    int t;
    cin >> t;
    for(int a0 = 0; a0 < t; a0++){
        int n;
        cin >> n;
        /*
        cout << (unsigned long long int) (3 * ((unsigned long long int)(n-1)/3) * (((unsigned long long int)(n-1)/3+1)))/2 << endl;
        cout << (unsigned long long int) (5 * ((unsigned long long int)(n-1)/5) * (((unsigned long long int)(n-1)/5+1)))/2 << endl;
        cout << (unsigned long long int) (15 * ((unsigned long long int)(n-1)/15) * (((unsigned long long int)(n-1)/15+1)))/2 << endl;
        */
        cout << ((unsigned long long int) (3 * ((unsigned long long int)(n-1)/3) * (((unsigned long long int)(n-1)/3+1)))/2 + (unsigned long long int) (5 * ((unsigned long long int)(n-1)/5) * (((unsigned long long int)(n-1)/5+1)))/2 - (unsigned long long int) (15 * ((unsigned long long int)(n-1)/15) * (((unsigned long long int)(n-1)/15+1)))/2) << endl;
    }
    return 0;
}
