#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;

int gcd(int a,int b);

// Juggling Algo
void leftRotate(int arr[], int d, int n) {
    int i, j, k, temp;
    
    for (i = 0; i < gcd(d, n); i++) {
        temp = arr[i];
        j = i;
        
        while(1) {
            k = j + d;
            if (k >= n)
                k -= n;
            
            if (k == i)
                break;
            
            arr[j] = arr[k];
            j = k;
        }
        
        arr[j] = temp;
    }
}

int gcd(int a, int b) {
    if (b == 0)
        return a;
    else
        return gcd(b, a%b);
}

int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */ 
    int n, d;
    cin >> n >> d;
    
    int arr[n];
    
    for(int i = 0; i < n; i++)        
        cin >> arr[i];
    
    leftRotate(arr, d, n);
    
    for(int i = 0; i < n; i++)
        cout << arr[i] << " ";
    
    return 0;
}
