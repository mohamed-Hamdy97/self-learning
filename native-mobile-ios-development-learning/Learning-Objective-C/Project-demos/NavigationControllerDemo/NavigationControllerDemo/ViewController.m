//
//  ViewController.m
//  NavigationControllerDemo
//
//  Created by mohamed Elnagar on 27/01/2022.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *myUserName;
- (IBAction)sayHello:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)sayHello:(UIButton *)sender {
   
    /*
        //it is a problem of taken object as this methods
        //that mean you create new object as a new View contoller not from second new controoler
        SecondViewController *secondVc = [SecondViewController new];
     */
    
    //solution is  to mak obj from story board based on storyboard id
    SecondViewController *secondVc = [self.storyboard instantiateViewControllerWithIdentifier:@"secondVC"];
    //navigate to secondViewcontroller
    [self.navigationController pushViewController:secondVc animated:YES];
    
    /*
    //Accessing textInput and assien its value to my label of second view
    //but it is a problem because myLabel not loaded yet
    secondVc.myLabel.text= _myUserName.text
     */
    
    //solution is to make string at second view and assign at vieewdidload of seconVC the user name which passed to second view to this string
    secondVc.userName = _myUserName.text;
    secondVc.firstVC = self;
    //confirm that firstVC is consird for this class
    
    
    
}

- (void)clear{
    _myUserName.text=@"";
    //at this step how to access clear method when i am at the second view
    //solution at first to make refrence on first view. by make a property of type protocol cleartext
    
    //pop navigation
    [self.navigationController popViewControllerAnimated:YES];
    
}


@end
