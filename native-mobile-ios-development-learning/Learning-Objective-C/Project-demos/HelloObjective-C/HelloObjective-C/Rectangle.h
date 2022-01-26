
#import <Foundation/Foundation.h>
#import "Shape.h"


@interface Rectangle : Shape{
    int length;
}

//override method from shape
- (int)setWidth:(int)x andHeight:(int) y;

//new methods
-(void) notInheretedMethod;

@end

@implementation Rectangle

- (int)setWidth:(int)x andHeight:(int)y{
    printf("this rect overrided meth\n");
    return x+y;
}

- (void)notInheretedMethod{
    printf("this is rectangle new method not at inherted from class shap\n");
}


@end
