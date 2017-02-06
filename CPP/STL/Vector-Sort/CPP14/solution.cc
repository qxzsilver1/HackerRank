#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
#include <iterator>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */
    std::vector<int> v;
    int n;
    
    std::cin >> n;
    
    std::copy_n(std::istream_iterator<int>(std::cin), n, std::back_inserter(v));
    std::sort(v.begin(), v.end());
    std::copy(v.begin(), v.end(), std::ostream_iterator<int>(std::cout, " "));
    
    return 0;
}
