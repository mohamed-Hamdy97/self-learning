//
//  main.m
//  ProtocolDemo
//
//  Created by mohamed Elnagar on 22/01/2022.
//

#import <Cocoa/Cocoa.h>
#import "ClassA.h"

int main(int argc, const char * argv[]) {
   
    ClassA *obj = [ClassA new];
    
    [obj signIn];
    
    return 0;
}
