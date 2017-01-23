#include <iostream>
using namespace std;

int main() {

    int n;
    int q;
    int size;

    cin >> n >> q;

    int** arr = new int*[n];
    int** dummy = new int*[q];

    for(int i = 0 ; i < q; i++)
        dummy[i] = new int[2];

    for(int i = 0; i < n; i++)
    {
         cin >> size;
         arr[i] = new int[size];
         for(int j = 0; j < size; j++)
             cin >> arr[i][j];
    }

    for(int i = 0 ; i < q; i++)
        cin >> dummy[i][0] >> dummy[i][1];

    for(int i = 0 ; i < q; i++)
       cout << arr[dummy[i][0]][dummy[i][1]] << endl;

	return 0;
}
