//
//  shape.m
//  HelloObjective-C
//
//  Created by mohamed Elnagar on 21/01/2022.
//

//#import <Foundation/Foundation.h>  // don't need to import this because you import at .m file
#import "Shape.h"

@implementation Shape

//implement all methods

- (void)firstMethod{
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

@end
