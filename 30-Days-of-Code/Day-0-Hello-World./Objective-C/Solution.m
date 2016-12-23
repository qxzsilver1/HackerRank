#import <Foundation/Foundation.h>

int main (int argc, const char * argv[])
{
        NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
        char inputString[100] = {0};
    
        //scanf("%s", inputString);
        fgets (inputString, 100, stdin);
        NSLog (@"Hello, World.");
        printf("Hello, World.\n");
        printf("%s\n", inputString);
        [pool drain];
        return 0;
}
