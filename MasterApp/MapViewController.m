//
//  MapViewController.m
//  MasterApp
//
//  Created by Alexis Martínez on 20/6/15.
//  Copyright (c) 2015 Alexis Martínez Chacón. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.locationManager=[[CLLocationManager alloc]init];
    [self.locationManager requestWhenInUseAuthorization];
    _mapView.showsUserLocation=YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)CenterButtonClick:(id)sender {
    MKUserLocation *location= _mapView. userLocation;
    MKCoordinateRegion rec=MKCoordinateRegionMakeWithDistance(location.location.coordinate, 10000, 10000);
    [_mapView setRegion:rec];
    
}
@end
