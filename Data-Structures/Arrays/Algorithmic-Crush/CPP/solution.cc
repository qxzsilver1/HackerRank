#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */   
    long int N, M, a, b, k, i, j, max=0, x=0;

    cin>>N>>M;
    long int *arr=new long int[N+1]();

    for (i=0; i<M; i++)
    {
        cin>>a>>b>>k;
        arr[a]+=k;
        if((b+1)<=N) 
            arr[b+1]-=k;
    }

    for (i=1; i<=N; i++)
    {
       x=x+arr[i];
       if(max<x) max=x;
    }

    cout<<max;
    return 0;
}
