//
//  SecondViewController.m
//  NavigationControllerDemo
//
//  Created by mohamed Elnagar on 27/01/2022.
//

#import "SecondViewController.h"

@interface SecondViewController ()


@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //ssign username which from text input to myLabel.
    _myLabel.text= _userName;
    //or using appending method
    _myLabel.text= [@"Hello " stringByAppendingString:_userName];
}




@end
