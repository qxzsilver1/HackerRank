#include <bits/stdc++.h>
#include <math.h>

// gcd Euclidean algo
unsigned long long int gcd(unsigned long long int a, unsigned long long int b) {

  while (b) {
    unsigned long long int t = b;

    b = a % b;
    a = t;
  }
  return a;
}

using namespace std;

/*
 * Complete the primeCount function below.
 */
int primeCount(long n) {
    /*
     * Write your code here.
     */
    unsigned int count;
    unsigned long long int prod;
    unsigned long long int prime;

    if (n < 2)
      return 0;

    prod = 2;
    count = 1;
    for (prime = 3; prod * prime <= n; prime += 2) {
      if (gcd(prod, prime) == 1) {
        prod *= prime;
        count++;
      }
    }
    return count;
    /* 
    if (n == 1)
        return 0;
    else {
        //cout << int(sqrt(n)) << endl;
        return 1 + primeCount(sqrt(n));
    }
    */
}

int main()
{
    ofstream fout(getenv("OUTPUT_PATH"));

    int q;
    cin >> q;
    cin.ignore(numeric_limits<streamsize>::max(), '\n');

    for (int q_itr = 0; q_itr < q; q_itr++) {
        long n;
        cin >> n;
        cin.ignore(numeric_limits<streamsize>::max(), '\n');

        int result = primeCount(n);

        fout << result << "\n";
    }

    fout.close();

    return 0;
}
