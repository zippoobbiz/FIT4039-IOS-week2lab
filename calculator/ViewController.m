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
    _operand1.delegate = self;
    _operand2.delegate = self;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)sub {
    // Get the values from the interface into variables
        float op1 = self.operand1.text.intValue;
        float op2 = self.operand2.text.intValue;
    
        calculator *cal = [[calculator alloc] initWithOp1:op1
                                                   andOp2: op2];
        self.result.text = [NSString stringWithFormat:@"%.2f",[cal subtract]];
}

- (IBAction)multi {
    float op1 = self.operand1.text.intValue;
    float op2 = self.operand2.text.intValue;
    
    calculator *cal = [[calculator alloc] initWithOp1:op1
                                               andOp2: op2];
    self.result.text = [NSString stringWithFormat:@"%.2f",[cal multi]];
}


- (IBAction)divide {
    float op1 = self.operand1.text.intValue;
    float op2 = self.operand2.text.intValue;
    
    calculator *cal = [[calculator alloc] initWithOp1:op1
                                               andOp2: op2];
    self.result.text = [NSString stringWithFormat:@"%.2f",[cal divide]];
}

- (IBAction)plus {
    float op1 = self.operand1.text.intValue;
    float op2 = self.operand2.text.intValue;
    
    calculator *cal = [[calculator alloc] initWithOp1:op1
                                               andOp2: op2];
    self.result.text = [NSString stringWithFormat:@"%.2f",[cal plus]];
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string  {
    
    if (textField==_operand1||textField==_operand2)
    {
        NSCharacterSet *cs = [[NSCharacterSet characterSetWithCharactersInString:ACCEPTABLE_CHARECTERS] invertedSet];
        
        NSString *filtered = [[string componentsSeparatedByCharactersInSet:cs] componentsJoinedByString:@""];
        
        return [string isEqualToString:filtered];
    }
    return YES;
}
@end
