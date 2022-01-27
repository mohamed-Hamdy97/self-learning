//
//  ViewController.m
//  CocoaPodDemo
//
//  Created by mohamed Elnagar on 27/01/2022.
//

#import "ViewController.h"
#import <SDWebImage/SDWebImage.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *myimageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_myimageView sd_setImageWithURL:[NSURL URLWithString:@"https://helpx.adobe.com/content/dam/help/en/photoshop/using/convert-color-image-black-white/jcr_content/main-pars/before_and_after/image-before/Landscape-Color.jpg"]
                 placeholderImage:[UIImage imageNamed:@"image.jpg"]];
}


@end
