//
//  main.m
//  HelloObjective-C
//
//  Created by mohamed Elnagar on 21/01/2022.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Shape.h"

int main(int argc, char * argv[]) {
//    NSString * appDelegateClassName;
//    @autoreleasepool {
//        // Setup code that might create autoreleased objects goes here.
//        appDelegateClassName = NSStringFromClass([AppDelegate class]);
//    }
    printf("hello");
    Shape *obj1 = [[Shape alloc] init];
    Shape *obj2 = [Shape new];
    
    [obj1 firstMethod];
    [obj1 firstMethod:10];
    int result=[obj2 setWidth:10 andHeight:20];
    printf("%d\n",result);
    [Shape secondMethod];
    
    
    return 0;
//    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
