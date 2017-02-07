#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
#include <map>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */
    std::map <string, int> m;
    
    int Q;
    cin >> Q;
    
    for (int i = 0; i < Q; i++) {
        int type, y;
        string x;
        
        cin >> type;
        if (type == 1) {
            cin >> x >> y;
            
            map<string,int>::iterator itr = m.find(x);
            if (itr == m.end())
                m.insert(make_pair(x,y));
            else
                m[x] = m[x] + y;          
        }
        else if (type == 2) {
            cin >> x;
            m.erase(x);
        }
        else if (type == 3) {
            cin >> x;
            map<string,int>::iterator itr = m.find(x);
            if (itr == m.end())
                cout << "0" << endl;
            else
                cout << m[x] << endl;
        }
    }
    
    return 0;
}
