#include <map>
#include <set>
#include <list>
#include <cmath>
#include <ctime>
#include <deque>
#include <queue>
#include <stack>
#include <string>
#include <bitset>
#include <cstdio>
#include <limits>
#include <vector>
#include <climits>
#include <cstring>
#include <cstdlib>
#include <fstream>
#include <numeric>
#include <sstream>
#include <iostream>
#include <algorithm>
#include <unordered_map>

using namespace std;


int main(){
    int t;
    cin >> t;
    for(int a0 = 0; a0 < t; a0++){
        int n;
        cin >> n;
        cout << ((unsigned long long int) (3 * ((unsigned long long int)(n-1)/3) * (((unsigned long long int)(n-1)/3+1)))/2 + (unsigned long long int) (5 * ((unsigned long long int)(n-1)/5) * (((unsigned long long int)(n-1)/5+1)))/2 - (unsigned long long int) (15 * ((unsigned long long int)(n-1)/15) * (((unsigned long long int)(n-1)/15+1)))/2) << endl;
    }
    return 0;
}
