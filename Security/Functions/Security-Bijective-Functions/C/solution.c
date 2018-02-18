#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int compare( const void* a, const void* b)
{
     int int_a = * ( (int*) a );
     int int_b = * ( (int*) b );

     if ( int_a == int_b ) return 0;
     else if ( int_a < int_b ) return -1;
     else return 1;
}

int main() {

    /* Enter your code here. Read input from STDIN. Print output to STDOUT */ 
    int n;
    scanf("%i", &n);
    int arr[n];
    
    for (int i = 0; i < n; i++) {
        scanf("%i", &arr[i]);    
    }
    
    qsort(arr, n, sizeof(int), compare);
    
    int count = 0;
    
    for (int j = 0; j < n; j++) {
           if (arr[j] != j+1) {
               count++;
               break;
           }
       }

    if (count == 0)
        printf("YES");
    else 
        printf("NO");
    
    return 0;
}

