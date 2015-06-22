//
//  WeatherViewController.m
//  MasterApp
//
//  Created by Alexis Martínez on 22/6/15.
//  Copyright (c) 2015 Alexis Martínez Chacón. All rights reserved.
//

#import "WeatherViewController.h"

@interface WeatherViewController ()

@end

@implementation WeatherViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)updateClick:(id)sender {
    NSMutableString *urlString=[[NSMutableString alloc]initWithString:@"http://api.openweathermap.org/data/2.5/weather?q="];
    [urlString appendString:_cityTextField.text];
    NSURL *url= [NSURL URLWithString:urlString];
    NSURLRequest *req=[NSURLRequest requestWithURL:url];
    [NSURLConnection sendAsynchronousRequest:req queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        //Esto se ejecuta cuando termina la llamada
        if(data.length>0 && connectionError== nil){
            NSDictionary *weatherInfo= [NSJSONSerialization JSONObjectWithData:data options:0 error:NULL];
            NSLog(@"%@",weatherInfo);

            [_labelInfo setText:[NSString stringWithFormat:@"%@",[weatherInfo valueForKeyPath:@"main.humidity"]]];
        }
    }];
}
@end
