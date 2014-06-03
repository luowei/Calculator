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
        switch (method) {
            case 1:
                runningTotal *= selectNumber;
                break;
            case 2:
                runningTotal /= selectNumber;
                break;
            case 3:
                runningTotal -= selectNumber;
                break;
            case 4:
                runningTotal += selectNumber;
                break;
            default:
                break;
        }
    }
    method = 1;
    selectNumber = 0;
}
- (IBAction)divide:(id)sender {
    if(runningTotal == 0){
        runningTotal = selectNumber;
    }else{
        switch (method) {
            case 1:
                runningTotal *= selectNumber;
                break;
            case 2:
                runningTotal /= selectNumber;
                break;
            case 3:
                runningTotal -= selectNumber;
                break;
            case 4:
                runningTotal += selectNumber;
                break;
            default:
                break;
        }
    }
    method = 2;
    selectNumber = 0;
}
- (IBAction)subtract:(id)sender {
    if(runningTotal == 0){
        runningTotal = selectNumber;
    }else{
        switch (method) {
            case 1:
                runningTotal *= selectNumber;
                break;
            case 2:
                runningTotal /= selectNumber;
                break;
            case 3:
                runningTotal -= selectNumber;
                break;
            case 4:
                runningTotal += selectNumber;
                break;
            default:
                break;
        }
    }
    method = 3;
    selectNumber = 0;
}
- (IBAction)plus:(id)sender {
    if(runningTotal == 0){
        runningTotal = selectNumber;
    }else{
        switch (method) {
            case 1:
                runningTotal *= selectNumber;
                break;
            case 2:
                runningTotal /= selectNumber;
                break;
            case 3:
                runningTotal -= selectNumber;
                break;
            case 4:
                runningTotal += selectNumber;
                break;
            default:
                break;
        }
    }
    method = 4;
    selectNumber = 0;
}
- (IBAction)equals:(id)sender {
    if(runningTotal == 0){
        runningTotal = selectNumber;
    }else{
        switch (method) {
            case 1:
                runningTotal *= selectNumber;
                break;
            case 2:
                runningTotal /= selectNumber;
                break;
            case 3:
                runningTotal -= selectNumber;
                break;
            case 4:
                runningTotal += selectNumber;
                break;
            default:
                break;
        }
    }
    method = 0;
    selectNumber = 0;
    _screen.text = [NSString stringWithFormat:@"%.2f",runningTotal];
}
- (IBAction)AllClear:(id)sender {
    method = 0;
    runningTotal = 0;
    selectNumber = 0;
    _screen.text = @"0";
}

@end
