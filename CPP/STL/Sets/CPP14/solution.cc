#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <set>
#include <algorithm>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */
    int Q;
    std::cin >> Q;
    
    set<int> st;
    
    for (int i = 0; i < Q; i++) {
        int y, x;
        std::cin >> y >> x;
        if (y == 1)
            st.insert(x);
        else if (y == 2)
            st.erase(x);
        else if (y == 3) {
            set<int>::iterator itr = st.find(x);
            if (itr == st.end())
                cout << "No" << endl;
            else
                cout << "Yes" << endl;
        }
    }
    
    return 0;
}
