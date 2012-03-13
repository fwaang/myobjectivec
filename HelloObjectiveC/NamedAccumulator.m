//
//  NamedAccumulator.m
//  HelloObjectiveC
//
//  Created by Wang Frank on 12-3-8.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "NamedAccumulator.h"

@implementation NamedAccumulator

- (void) setName:(NSString *)newName
{
    //[newName retain];
    //[name release];
    name = newName;
}

- (NSString *) name
{
    return name;
}

- (void) addToTotal:(int)amount
{
    NSLog(@"Adding %d to the %@ Accumulator", amount, [self name]);
    [super addToTotal:amount];
    NSLog(@"the amount is %d", total);
}

- (void) dealloc
{
    //[name release];
    //[super dealloc];
}

- (id) initWithName:(NSString *)newName
{
    return [self initWithName:newName amount:0];
}

- (id) initWithName:(NSString *)newName amount:(int)amount
{
    if (self = [super init])
    {
        name = newName;
        total = amount;
    }
    return self;
}

- (id) init
{
    if (self = [super init])
    {
        
    }
    return self;
}

@end
