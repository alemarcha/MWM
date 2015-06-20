//
//  MainViewController.h
//  MasterApp
//
//  Created by Alexis Martínez on 19/6/15.
//  Copyright (c) 2015 Alexis Martínez Chacón. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *labelInicial;
@property int numClicks;
@property (weak, nonatomic) IBOutlet UIButton *bHola;
- (IBAction)buttonClickHola:(UIButton *)sender;

@end
