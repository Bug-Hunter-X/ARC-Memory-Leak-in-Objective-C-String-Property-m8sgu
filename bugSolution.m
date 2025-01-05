The solution is to handle the assignment of the `myString` property correctly.  If the new string should replace the old one, the old string should be set to `nil` to break the strong reference. If you wish to retain the old string reference, you'll need to consider creating a copy rather than replacing the reference.

```objectivec
@interface MyClass : NSObject
@property (strong, nonatomic) NSString *myString;
@end

@implementation MyClass
- (void)someMethod {
    NSString *newString = [NSString stringWithString:@