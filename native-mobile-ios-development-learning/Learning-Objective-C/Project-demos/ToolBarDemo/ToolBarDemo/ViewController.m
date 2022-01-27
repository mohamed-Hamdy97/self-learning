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


- (IBAction)doAction2:(UIBarButtonItem *)sender {
    printf("actio1");
}

- (IBAction)doAction1:(UIBarButtonItem *)sender {
    printf("do action2");
}
@end
