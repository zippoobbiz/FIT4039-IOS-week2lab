//
//  calculator.m
//  calculator
//
//  Created by BigBadEgg on 3/10/15.
//  Copyright (c) 2015 BigBadEgg. All rights reserved.
//

#import "calculator.h"

@implementation calculator


-(id) initWithOp1:(float)opr1 andOp2:(float) opr2
{
    if(self=[super init])
    {
        op1 = opr1;
        op2 = opr2;
    }
    return self;
}

-(float)plus
{
    return (op1+op2);
}


-(float)multi
{
    return (op1*op2);
}

-(float)subtract
{
    return (op1-op2);
}

-(float)divide
{
    return (op1/op2);
}





@end
