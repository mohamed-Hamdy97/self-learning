//
//  main.m
//  CategoryDemo
//
//  Created by mohamed Elnagar on 22/01/2022.
//

#import <Cocoa/Cocoa.h>
#import "NSObject+NSObject_SayHello.h"

int main(int argc, const char * argv[]) {
    
    
    NSObject *obj = [NSObject new];
    //call sayHello method which at category not class.
    [obj sayHello];
    
    return 0;
}
