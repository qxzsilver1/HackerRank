#include <bits/stdc++.h>
#include <cmath>

using namespace std;

// Complete the diagonalDifference function below.
int diagonalDifference(vector<vector<int>> arr) {
    int n = arr.size();

    int sum = 0;

    for (int i = 0; i < n / 2; i++)
        sum += arr[i][i] - arr[i][n-1-i];
    if (n % 2 == 1) {
        for (int i = arr.size() / 2 + 1; i < n; i++)
            sum += arr[i][i] - arr[i][n-1-i];
    }
    else {
        for (int i = arr.size() / 2; i < n; i++)
            sum += arr[i][i] - arr[i][n-1-i];
    }

    return abs(sum);
}

int main()
{
    ofstream fout(getenv("OUTPUT_PATH"));

    int n;
    cin >> n;
    cin.ignore(numeric_limits<streamsize>::max(), '\n');

    vector<vector<int>> arr(n);
    for (int i = 0; i < n; i++) {
        arr[i].resize(n);

        for (int j = 0; j < n; j++) {
            cin >> arr[i][j];
        }

        cin.ignore(numeric_limits<streamsize>::max(), '\n');
    }

    int result = diagonalDifference(arr);

    fout << result << "\n";

    fout.close();

    return 0;
}
