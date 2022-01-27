//
//  ViewController.m
//  NSUserDefaults_and_Swipe gesture
//
//  Created by mohamed Elnagar on 27/01/2022.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //create swipe gesture:
    //1-specify target and action:
    UISwipeGestureRecognizer *leftSwip= [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(goNext)];
    //2-specify direction:
    leftSwip.direction=UISwipeGestureRecognizerDirectionLeft;
    //3-add this swipe to the view
    [self.view addGestureRecognizer:leftSwip];
}

- (void)goNext{
    SecondViewController *secondVC =[self.storyboard instantiateViewControllerWithIdentifier:@"secondVC" ];
    
    //go to next by this method .. you c an add block of cod <#^(void)completion#> or not
    [self presentViewController:secondVC animated:YES completion:^{printf("hi there ");}];
    
}

@end
