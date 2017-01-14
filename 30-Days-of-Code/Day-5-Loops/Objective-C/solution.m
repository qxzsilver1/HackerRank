#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]){
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int n;
    scanf("%i",&n);
    
    for (int i = 1; i <= 10; i++)
        printf("%i x %i = %i\n", n, i, n*i);
    
    [pool drain];
    return 0;
}
