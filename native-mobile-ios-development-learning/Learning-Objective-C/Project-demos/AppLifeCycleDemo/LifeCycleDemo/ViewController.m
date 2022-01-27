//
//  ViewController.m
//  LifeCycleDemo
//
//  Created by mohamed Elnagar on 24/01/2022.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
- (IBAction)sayHello:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)sayHello:(UIButton *)sender {
    _myLabel.text=@"Hello world";
}
@end
