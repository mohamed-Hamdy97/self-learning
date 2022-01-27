//
//  SecondViewController.h
//  NavigationControllerDemo
//
//  Created by mohamed Elnagar on 27/01/2022.
//

#import <UIKit/UIKit.h>
#import "ClearText.h"

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController
@property NSString *userName;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
//making property of type clearText protocol
@property id<ClearText> firstVC;

-(void) clear;

@end




NS_ASSUME_NONNULL_END
