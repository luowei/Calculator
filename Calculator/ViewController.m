//
//  ViewController.m
//  Calculator
//
//  Created by luowei on 14-6-3.
//  Copyright (c) 2014年 rootls. All rights reserved.
//

#import "ViewController.h"

int method;
int selectNumber;
float runningTotal;

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *screen;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)number1:(id)sender {
    selectNumber *=10;
    selectNumber += 1;
    _screen.text = [NSString stringWithFormat:@"%i",selectNumber];
}
- (IBAction)number2:(id)sender {
    selectNumber *=10;
    selectNumber += 2;
    _screen.text = [NSString stringWithFormat:@"%i",selectNumber];
}
- (IBAction)number3:(id)sender {
    selectNumber *=10;
    selectNumber += 3;
    _screen.text = [NSString stringWithFormat:@"%i",selectNumber];
}
- (IBAction)number4:(id)sender {
    selectNumber *=10;
    selectNumber += 4;
    _screen.text = [NSString stringWithFormat:@"%i",selectNumber];
}
- (IBAction)number5:(id)sender {
    selectNumber *=10;
    selectNumber += 5;
    _screen.text = [NSString stringWithFormat:@"%i",selectNumber];
}
- (IBAction)number6:(id)sender {
    selectNumber *=10;
    selectNumber += 6;
    _screen.text = [NSString stringWithFormat:@"%i",selectNumber];
}
- (IBAction)number7:(id)sender {
    selectNumber *=10;
    selectNumber += 7;
    _screen.text = [NSString stringWithFormat:@"%i",selectNumber];
}
- (IBAction)number8:(id)sender {
    selectNumber *=10;
    selectNumber += 8;
    _screen.text = [NSString stringWithFormat:@"%i",selectNumber];
}
- (IBAction)number9:(id)sender {
    selectNumber *=10;
    selectNumber += 9;
    _screen.text = [NSString stringWithFormat:@"%i",selectNumber];
}
- (IBAction)number0:(id)sender {
    selectNumber *=10;
    selectNumber += 0;
    _screen.text = [NSString stringWithFormat:@"%i",selectNumber];
}
- (IBAction)times:(id)sender {
    if(runningTotal == 0){
        runningTotal = selectNumber;
    }else{
        
    }
    method = 1;
}
- (IBAction)divide:(id)sender {
    method = 2;
}
- (IBAction)subtract:(id)sender {
    method = 3;
}
- (IBAction)plus:(id)sender {
    method = 4;
}
- (IBAction)equals:(id)sender {
    
}
- (IBAction)AllClear:(id)sender {
    method = 0;
    runningTotal = 0;
    selectNumber = 0;
}

@end
