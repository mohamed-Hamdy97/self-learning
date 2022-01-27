//
//  ViewController.m
//  NetworkingDemo
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


- (IBAction)doAsyncAction:(UIButton *)sender {
    //for making async request that will pause the executionof any evens at screen
    NSString *str =@"https://maktoob.yahoo.com/?p=us";
    NSURL *url = [NSURL URLWithString:str];
    NSString *myData =[[NSString alloc]initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    _myTextView.text=myData;

}

- (IBAction)doSyncAction:(UIButton *)sender {
}
@end
