//
//  ViewController.m
//  CatAge
//
//  Created by quantumman on 2014/04/15.
//  Copyright (c) 2014年 quantumman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *catAgeField;
@property (weak, nonatomic) IBOutlet UILabel *humanAgeLabel;
- (IBAction)calculate:(id)sender;

- (double) catAgeToHumanAge:(double)catAge;

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

- (IBAction)calculate:(id)sender {
    double catAge = [_catAgeField.text doubleValue];
    double humanAge = [self catAgeToHumanAge:catAge];
    _humanAgeLabel.text = [NSString stringWithFormat:@"%.1f歳", humanAge];
}

- (double)catAgeToHumanAge:(double)catAge
{
    double age;
    if (catAge <= 1)
        age = 20 * catAge;
    else if (catAge <= 5)
        age = catAge * 6 + 15;
    else if (catAge <= 10)
        age = catAge * 5 + 20;
    else if (catAge <= 15)
        age = catAge * 4 + 30;
    else
        age = catAge * 3 + 45;

    return age;
}

#pragma Validations

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range
                                                        replacementString:(NSString *)string
{
    NSMutableString* catAge = [_catAgeField.text mutableCopy];
    [catAge replaceCharactersInRange:range withString:string];

    BOOL isOverAgedLimit = 100 < [catAge doubleValue];
    BOOL isOverLengthLimit = 4 < [catAge length];
    return !isOverAgedLimit && !isOverLengthLimit;
}

@end
