//
//  ViewController.h
//  MapViewDemo
//
//  Created by mohamed Elnagar on 28/01/2022.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController <MKMapViewDelegate , CLLocationManagerDelegate>

@property CLLocationManager *LocationManager;

@end

