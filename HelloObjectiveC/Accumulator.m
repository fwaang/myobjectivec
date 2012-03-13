//
//  Accumulator.m
//  HelloObjectiveC
//
//  Created by Wang Frank on 12-3-8.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Accumulator.h"

@implementation Accumulator

- (void) addToTotal:(int)amount
{
    total = total + amount;
}

- (int) total
{
    return total;
}

- (void) zeroTotal
{
    total = 0;
}

@end
