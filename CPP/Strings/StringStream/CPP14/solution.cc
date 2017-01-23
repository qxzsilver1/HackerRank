#include <sstream>
#include <vector>
#include <iostream>
using namespace std;

vector<int> parseInts(string str) {
   // Complete this function
   stringstream ss(str);
   char ch;
   vector<int> output;
    
   while (!ss.eof()) {
       int a;
       ss >> a >> ch;
       output.push_back(a);
   }
    
   return output;
}

int main() {
    string str;
    cin >> str;
    vector<int> integers = parseInts(str);
    for(int i = 0; i < integers.size(); i++) {
        cout << integers[i] << "\n";
    }
    
    return 0;
}
