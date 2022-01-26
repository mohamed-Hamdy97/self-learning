//
//  shape.m
//  HelloObjective-C
//
//  Created by mohamed Elnagar on 21/01/2022.
//

//#import <Foundation/Foundation.h>  // don't need to import this because you import at .m file
#import "Shape.h"

@implementation Shape{
    int instanseVar;
}
//declaring static variable and they needs setter and getters because they are static
static int staticVar = 0;

//setter and getter are ctreated automatically .. this is just for nicknmae vol.
//so we can access this volume as vol
//@synthesize volume=vol;

//implement all methods
- (void)firstMethod{
    //vol=10; this is property
    //this mean there is auto syntheize has created 
    _volume=10;
    printf("this is first method\n");
}

- (void)firstMethod: (int)x {
    printf("this is first method with param %d \n",x);
}

- (int)setWidth:(int)x andHeight:(int)y{
    return x*y;
}

+ (void)secondMethod{
    printf("this is second method (a static method)\n");
}

/* applied on accessors  */
+(int) getStaticVar{
    //inside class method only return class (static) variable:
    return staticVar;
    /* cannot access instanse variable at class method
     return instanseVar;
     */
}

+(void)incrementStaticVar{
    staticVar++;
}

@end
