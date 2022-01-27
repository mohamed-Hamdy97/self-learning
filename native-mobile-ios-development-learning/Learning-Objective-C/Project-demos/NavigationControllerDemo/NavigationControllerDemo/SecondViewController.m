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
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(clear)];
    
    self.navigationItem.rightBarButtonItem=rightBtn;
    
}


- (void)clear{
    printf("clear pressed");
    //access the clear method at first view
    //but we must mention tht firstVc is for fisrt view by self keyword before navigate
    [_firstVC clear];
}

@end
