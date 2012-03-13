//
//  Greeter.m
//  HelloObjectiveC
//
//  Created by Wang Frank on 12-3-2.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Greeter.h"

@implementation Greeter

- (NSString *)greetingText
{
    return greetingText;
}

- (void)setVipGreeting: (Greeting*) vipGreetingClass
{
//    [newText retain];
//    [greetingText release];
    vipGreeting = vipGreetingClass;
}

- (void)setGreeting:(Greeting *)normalGreetingClass
{
    normalGreeting = normalGreetingClass;
}

- (void)issueGreeting: (int)whichGreeting
{
    if (whichGreeting == 0) {
        NSLog(@"%@", [normalGreeting helloText]);        
    } else if (whichGreeting == 1) {
        NSLog(@"%@", [vipGreeting helloText]);
    } else {
        NSLog(@"unknown greeting");
    }
}

- (void)dealloc
{
//    [greetingText release];
//    [super dealloc];
}

- (void) SetGreetingText2:(NSString *)normalText vipText:(NSString *)vipText
{
    normalGreetingText = normalText;
    vipGreetingText = vipText;
}

- (void) setGreetingText3:(Greeting *)normalGreetingClass vipGreeting:(Greeting *)vipGreetingClass
{
    // normalGreeting = normalGreetingClass;
    // vipGreeting = vipGreetingClass;
    [self setGreeting:normalGreetingClass];
    [self setVipGreeting:vipGreetingClass];
}

@end
