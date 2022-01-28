

#import "ViewController.h"
#import <MapKit/MapKit.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet MKMapView *myMap;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //we can do more feature from naigator at storyBoard.
    [_myMap setZoomEnabled:NO];
    [_myMap setDelegate:self];
    
    
}

- (void)mapView:(MKMapView *)mapView regionWillChangeAnimated:(BOOL)animated{
    printf("map Will change \n");
}

- (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated{
    printf("map did change\n");
}



@end
