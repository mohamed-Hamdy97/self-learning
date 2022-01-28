//
//  ViewController.h
//  NetworkingDemo
//
//  Created by mohamed Elnagar on 27/01/2022.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <NSURLConnectionDelegate,NSURLConnectionDataDelegate>
@property (weak, nonatomic) IBOutlet UITextView *myTextView;

- (IBAction)doSyncAction:(UIButton *)sender;
- (IBAction)doAsyncAction:(UIButton *)sender;

@end

