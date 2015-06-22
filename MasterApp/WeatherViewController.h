//
//  WeatherViewController.h
//  MasterApp
//
//  Created by Alexis Martínez on 22/6/15.
//  Copyright (c) 2015 Alexis Martínez Chacón. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WeatherViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *cityTextField;
@property (weak, nonatomic) IBOutlet UILabel *labelInfo;
- (IBAction)updateClick:(id)sender;

@end
