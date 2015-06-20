//
//  MapViewController.h
//  MasterApp
//
//  Created by Alexis Martínez on 20/6/15.
//  Copyright (c) 2015 Alexis Martínez Chacón. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController
- (IBAction)CenterButtonClick:(id)sender;
@property (strong,nonatomic) IBOutlet MKMapView *mapView;
@property (nonatomic,retain) CLLocationManager *locationManager;

@end
