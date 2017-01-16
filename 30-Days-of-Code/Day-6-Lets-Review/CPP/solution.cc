#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    int n;
    cin >> n;
    
    string firstHalf;
    string secondHalf;
    
    for (int i = 0; i < n; i++) {
        string s;
        cin >> s;
        
        for (int j = 0; j < s.length(); j++) {
            if (j % 2 == 0)
                firstHalf += s[j];
            else
                secondHalf += s[j];
        }
        
        cout << firstHalf << " " << secondHalf << endl;
        
        firstHalf = "";
        secondHalf = "";
    }
    return 0;
}
