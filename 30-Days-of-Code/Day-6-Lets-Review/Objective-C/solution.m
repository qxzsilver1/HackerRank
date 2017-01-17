#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    int n;
    scanf("%i", &n);
    
    for(int i = 1; i <= n; i++) {
        char s[10001];
        int nChars = scanf("%10000s", s);   // read up to 39 chars (leave room for NUL)
       
        NSMutableString *firstHalf = [NSMutableString stringWithString:@""];
        NSMutableString *secondHalf = [NSMutableString stringWithString:@""];
        for(int item = 0; item <= strlen(s); item++) {
            NSString *currentChar = [NSString stringWithFormat:@"%c", s[item]];
            
            if (item % 2 == 0) {
                [firstHalf appendString:currentChar];   
            }
            else { 
                [secondHalf appendString:currentChar];   
            }            
        }
        printf("%s %s\n", [firstHalf UTF8String], [secondHalf UTF8String]);
             
    }   
   
    [pool drain];
    return 0;
}
