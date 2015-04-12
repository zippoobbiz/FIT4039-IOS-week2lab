//
//  calculator.h
//  calculator
//
//  Created by BigBadEgg on 3/10/15.
//  Copyright (c) 2015 BigBadEgg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface calculator : NSObject
{

    float op1;
    float op2;
}

-(float)plus;
-(float)multi;
-(float)subtract;
-(float)divide;
-(id) initWithOp1:(float)opr1 andOp2:(float) opr2;

@end
