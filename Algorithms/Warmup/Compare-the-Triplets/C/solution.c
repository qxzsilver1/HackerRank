#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <limits.h>
#include <stdbool.h>

int* solve(int a0, int a1, int a2, int b0, int b1, int b2, int *result_size){
    // Complete this function
    *result_size = 2;
    int* scores[*result_size];
    
    //printf("size of array %ld", sizeof(scores)/sizeof(scores[0]));
    
    *scores[0] = ((a0>b0)?1:0)+ ((a1>b1)?1:0)+ ((a2>b2)?1:0);
    *scores[1] = ((a0<b0)?1:0)+ ((a1<b1)?1:0)+ ((a2<b2)?1:0);
    
    return *scores;
}

int main() {
    int a0; 
    int a1; 
    int a2; 
    scanf("%d %d %d", &a0, &a1, &a2);
    int b0; 
    int b1; 
    int b2; 
    scanf("%d %d %d", &b0, &b1, &b2);
    int result_size;
    int* result = solve(a0, a1, a2, b0, b1, b2, &result_size);
    for(int result_i = 0; result_i < result_size; result_i++) {
        if(result_i) {
            printf(" ");
        }
        printf("%d", result[result_i]);
    }
    puts("");
    

    return 0;
}
