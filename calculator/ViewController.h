//
//  ViewController.h
//  calculator
//
//  Created by BigBadEgg on 3/10/15.
//  Copyright (c) 2015 BigBadEgg. All rights reserved.
//

#import <UIKit/UIKit.h>
#define ACCEPTABLE_CHARECTERS @"0123456789."
@interface ViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *operand1;
@property (weak, nonatomic) IBOutlet UITextField *operand2;
- (IBAction)sub;
- (IBAction)multi;
- (IBAction)divide;
- (IBAction)plus;
@property (weak, nonatomic) IBOutlet UIButton *plusButton;
@property (weak, nonatomic) IBOutlet UIButton *subButton;
@property (weak, nonatomic) IBOutlet UIButton *multiButton;
@property (weak, nonatomic) IBOutlet UIButton *dividButton;

@property (weak, nonatomic) IBOutlet UILabel *result;


-(void)textFieldDidChange;

@end

