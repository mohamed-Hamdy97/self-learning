//
//  ViewController.m
//  ToolBarDemo
//
//  Created by mohamed Elnagar on 27/01/2022.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)showImage:(UIBarButtonItem *)sender {
    printf("actio1");
    UIImage *myImage= [UIImage imageNamed:@"image.jpg"];
    [_myImageView setImage:myImage];
}

- (IBAction)doAction1:(UIBarButtonItem *)sender {
    printf("do action2");
}
@end
