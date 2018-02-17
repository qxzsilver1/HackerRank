#include <bits/stdc++.h>

using namespace std;

/*
 * Complete the function below.
 */
int calculate(int x) {
    return x % 11;

}

int main() {
    int x;
    cin >> x;
    int result = calculate(x);
    cout << result << endl;
    return 0;
}
