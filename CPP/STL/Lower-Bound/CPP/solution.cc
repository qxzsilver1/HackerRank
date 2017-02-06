#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */
    int N, x;
    cin >> N;
    vector<int> v;
    
    for (int i = 0; i < N; i++){
        cin >> x;
        v.push_back(x);
    }
    
    int q, y;
    cin >> q;
    for (int i = 0; i < q; i++){
        cin >> y;
        vector<int>::iterator low = lower_bound(v.begin(), v.end(), y);
        if (v[low - v.begin()] == y)
            cout << "Yes " << (low - v.begin()+1) << endl;
        else
            cout << "No " << (low - v.begin()+1) << endl;
    }
    
    return 0;
}
