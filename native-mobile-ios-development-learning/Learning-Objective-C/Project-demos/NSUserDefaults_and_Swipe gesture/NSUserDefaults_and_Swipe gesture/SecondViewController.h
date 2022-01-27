//
//  SecondViewController.h
//  NSUserDefaults_and_Swipe gesture
//
//  Created by mohamed Elnagar on 27/01/2022.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *myName;
- (IBAction)SaveUserName:(UIButton *)sender;

@end

NS_ASSUME_NONNULL_END
