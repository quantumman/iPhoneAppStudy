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
}
@end
