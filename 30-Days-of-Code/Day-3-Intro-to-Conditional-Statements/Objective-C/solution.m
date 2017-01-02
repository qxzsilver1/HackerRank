#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]){
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int N;
    scanf("%i",&N);
    
    if (N % 2 == 1)
        printf("Weird");
    else if (N >= 6 && N <= 20)
        printf("Weird");
    else
        printf("Not Weird");
        
    [pool drain];
    return 0;
}

