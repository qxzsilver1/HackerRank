#include <bits/stdc++.h>

using namespace std;

// Complete the staircase function below.
void staircase(int n) {
    string s;
    int i = 1;
    while (n--) {
        s.push_back('#');
        cout << (s.replace(s.begin(), s.end() - i++, n, ' ')) << "\n";
    }
}

int main()
{
    int n;
    cin >> n;
    cin.ignore(numeric_limits<streamsize>::max(), '\n');

    staircase(n);

    return 0;
}
