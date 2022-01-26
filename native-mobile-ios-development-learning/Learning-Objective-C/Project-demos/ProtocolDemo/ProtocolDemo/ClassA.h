//
//  ClassA.h
//  ProtocolDemo
//
//  Created by mohamed Elnagar on 22/01/2022.
//

#ifndef ClassA_h
#define ClassA_h

#import "Authintication.h"

@interface ClassA : NSObject <Authintication>



@end

//we can implent at same header file
@implementation ClassA

-(void) signIn{
    printf("signIn mmethod is requird at protocol");
}


@end

#endif /* ClassA_h */
