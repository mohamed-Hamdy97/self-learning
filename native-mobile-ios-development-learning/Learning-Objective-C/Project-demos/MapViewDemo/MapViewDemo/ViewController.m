

#import "ViewController.h"
#import <MapKit/MapKit.h>
#import "MyAnnotation.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet MKMapView *myMap;
- (IBAction)AddAnnotation:(UITapGestureRecognizer *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //we can do more feature from naigator at storyBoard.
    [_myMap setZoomEnabled:NO];
    [_myMap setDelegate:self];
    
    
}

//when change the view of map
- (void)mapView:(MKMapView *)mapView regionWillChangeAnimated:(BOOL)animated{
    printf("map Will change \n");
}

//callback when the change region end
- (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated{
    printf("map did change\n");
}

/* annotation */
- (IBAction)AddAnnotation:(UITapGestureRecognizer *)sender {
    //1- get x, y from user
    CGPoint touchPoint = [sender locationInView:_myMap];
    
    //2- convert x,y to actual coordinate
    CLLocationCoordinate2D touchLocation = [_myMap convertPoint:touchPoint toCoordinateFromView:_myMap];
    
    //3- create annotaion, set its location title and sub
    MyAnnotation *annotaion = [MyAnnotation new];
    annotaion.coordinate= touchLocation;
    annotaion.title=@"point";
    annotaion.subtitle=@"subtitle";
    
    //3-finally  add te annotation
    [_myMap addAnnotation:annotaion];
    
    //there is callback method called if we click on annotain
    
}
@end
