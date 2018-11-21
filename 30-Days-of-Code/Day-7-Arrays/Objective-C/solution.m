#import <Foundation/Foundation.h>
#import <objc/Object.h>
#import <objc/objc.h>

@interface NSString (NumberFromString)
- (NSNumber *) numberFromString:(NSNumberFormatter *)formatter;
@end

@implementation NSString (NumberFromString)
- (NSNumber *) numberFromString:(NSNumberFormatter *)formatter {
    NSNumber *number = [formatter numberFromString:self];

    if (number == nil) {
        [NSException raise:@"Bad Input" format:@"%@", self];
    }

    return number;
}
@end

@interface NSString (ArrayFromString)
- (NSArray *) arrayFromString;
@end

@implementation NSString (ArrayFromString)
- (NSArray *) arrayFromString {
    return [self componentsSeparatedByString:@" "];
}
@end



int main(int argc, const char* argv[]) {
    @autoreleasepool {
        NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];

        NSData *availableInputData = [[NSFileHandle fileHandleWithStandardInput] availableData];
        NSString *availableInputString = [[NSString alloc] initWithData:availableInputData encoding:NSUTF8StringEncoding];
        NSArray *availableInputArray = [availableInputString componentsSeparatedByString:@"\n"];

        NSUInteger currentInputLine = 0;

        NSNumber *n = [[availableInputArray objectAtIndex:currentInputLine] numberFromString:numberFormatter];
        currentInputLine += 1;

        NSArray *arrTemp = [[availableInputArray objectAtIndex:currentInputLine] componentsSeparatedByString:@" "];
        currentInputLine += 1;

        NSMutableArray *arrTempMutable = [NSMutableArray arrayWithCapacity:[n unsignedIntegerValue]];

        [arrTemp enumerateObjectsUsingBlock:^(NSString *arrItem, NSUInteger idx, BOOL *stop) {
            [arrTempMutable addObject:[arrItem numberFromString:numberFormatter]];
        }];

        NSArray *arr = [arrTempMutable copy];

        NSArray *reversedArray = [[arr reverseObjectEnumerator] allObjects];

        NSString *something = [reversedArray componentsJoinedByString:@" "];

        printf("%s\n", [something UTF8String]);
    }

    return 0;
}
