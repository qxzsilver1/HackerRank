#include <math.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <limits.h>
#include <stdbool.h>

int calculate(int x) {
    // Complete this function
    return x % 11;
}

int main() {
    int x; 
    scanf("%i", &x);
    int result = calculate(x);
    printf("%d\n", result);
    return 0;
}
