
//all basic classes like NsObjects
#import <Foundation/Foundation.h>


@interface Shape : NSObject{
    int width;
    int height;
    @public
    int publicVar;
    @private
    int privateVar;
}
@property int volume;

//interface method
- (void) firstMethod ;
//static method with variable
- (void) firstMethod: (int) x;
// named argument method
- (int) setWidth: (int) x andHeight: (int) y;
// class method
+ (void) secondMethod;

/* applied on accessors  */
//getter method
+ (int) getStaticVar;
//setter method: increment  the static variable staticvar
+ (void) incrementStaticVar;

@end
