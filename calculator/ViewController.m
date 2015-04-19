//
//  ViewController.m
//  calculator
//
//  Created by BigBadEgg on 3/10/15.
//  Copyright (c) 2015 BigBadEgg. All rights reserved.
//

#import "ViewController.h"
#import "calculator.h"
@interface ViewController ()


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    //set textField control
    _operand1.delegate = self;
    _operand2.delegate = self;
    //disable all buttons
    _plusButton.enabled = NO;
    _subButton.enabled = NO;
    _multiButton.enabled = NO;
    _dividButton.enabled = NO;

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)sub {
    // Get the values from the interface into variables
        double op1 = self.operand1.text.doubleValue;
        double op2 = self.operand2.text.doubleValue;
    
        calculator *cal = [[calculator alloc] initWithOp1:op1
                                                   andOp2: op2];
        self.result.text = [NSString stringWithFormat:@"%.2f",[cal subtract]];
}//subtract function

- (IBAction)multi {
    double op1 = self.operand1.text.doubleValue;
    double op2 = self.operand2.text.doubleValue;
    
    calculator *cal = [[calculator alloc] initWithOp1:op1
                                               andOp2: op2];
    self.result.text = [NSString stringWithFormat:@"%.2f",[cal multi]];
}//multiply function


- (IBAction)divide {
    double op1 = self.operand1.text.doubleValue;
    double op2 = self.operand2.text.doubleValue;
    
    calculator *cal = [[calculator alloc] initWithOp1:op1
                                               andOp2: op2];
    self.result.text = [NSString stringWithFormat:@"%.2f",[cal divide]];
}//divide function

- (IBAction)plus {
    double op1 = self.operand1.text.doubleValue;
    double op2 = self.operand2.text.doubleValue;
    
    calculator *cal = [[calculator alloc] initWithOp1:op1
                                               andOp2:op2];
    self.result.text = [NSString stringWithFormat:@"%.2f",[cal plus]];
}//plus function

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string  {
    
    if (textField==_operand1||textField==_operand2)
    {
        NSCharacterSet *cs = [[NSCharacterSet characterSetWithCharactersInString:ACCEPTABLE_CHARECTERS] invertedSet];
        
        NSString *filtered = [[string componentsSeparatedByCharactersInSet:cs] componentsJoinedByString:@""];
        
        [textField addTarget:self
                      action:@selector(textFieldDidChange)
            forControlEvents:UIControlEventEditingChanged];
        
        return [string isEqualToString:filtered];
    }
    return YES;
}//control textField

-(void)textFieldDidChange{
    //enable buttons only when textFileds are not empty
    if(_operand1.text.length>0&&_operand2.text.length>0)
    {
        _plusButton.enabled = YES;
        _subButton.enabled = YES;
        _multiButton.enabled = YES;
        _dividButton.enabled = YES;
    }else{
        _plusButton.enabled = NO;
        _subButton.enabled = NO;
        _multiButton.enabled = NO;
        _dividButton.enabled = NO;
    }
}//listen textField input

@end
