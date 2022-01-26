//
//  main.m
//  HelloObjective-C
//
//  Created by mohamed Elnagar on 21/01/2022.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Shape.h"
#import "Rectangle.h"

int main(int argc, char * argv[]) {

    
    /*
    //applied on making object from class  and  calling it//
    printf("hello objective-c");
    Shape *obj1 = [[Shape alloc] init];
    Shape *obj2 = [Shape new];
    
    [obj1 firstMethod];
    [obj1 firstMethod:10];
    int result=[obj2 setWidth:10 andHeight:20];
    printf("%d\n",result);
    [Shape secondMethod];
    */
    
    
    // applied on calling static vriables
    [Shape incrementStaticVar];
    int var = [Shape getStaticVar];
    
    printf("staticVar %d \n",var);
    
    //accessing public variable
    Shape *shapObj = [Shape new];
    shapObj->publicVar=10;
    //cannot access private or protected variable
//    shapObj->width
    
    /* accessing property*/
    //callig property using . operator
    shapObj.volume=10;
    //using setter and getter
    [shapObj setVolume:30];
    var=[shapObj volume];
    
    printf("volume prop %d \n",shapObj.volume);
    printf("volume prop usning setter %d \n", var);
    
    
    /* appling on inherit and rectangle*/
    Rectangle * Rec =[Rectangle new];
    [Rec notInheretedMethod];
    [Rec setWidth:3 andHeight:2];
    
    
    return 0;
}
