
//all basic classes like NsObjects
#import <Foundation/Foundation.h>


@interface Shape : NSObject{
    int width;
    int height;
}

//interface method
- (void) firstMethod ;
//static method with variable
- (void) firstMethod: (int) x;
// named argument method
- (int) setWidth: (int) x andHeight: (int) y;
// class method
+ (void) secondMethod;


@end
