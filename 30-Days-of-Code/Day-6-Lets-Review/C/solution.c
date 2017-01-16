#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main() {

    int numLines;
    scanf("%d", &numLines);
    
    for (int i = 0; i < numLines; i++) {
        char s[10001];
        scanf("%s", s);
        
        char firstHalf[5002];
        char secondHalf[5002];
        
        int n;
        n = strlen(s);
        
        for (int j = 0; j < n; j++) {
            if (j % 2 == 0)
                strncat(firstHalf, &s[j], 1);
            else
                strncat(secondHalf, &s[j], 1);
        }
        
        printf("%s %s\n", firstHalf, secondHalf);
        
        memset(firstHalf, 0, 5002);
        memset(secondHalf, 0, 5002);
    }
    
    return 0;
}
