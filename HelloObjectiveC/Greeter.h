//
//  Greeter.h
//  HelloObjectiveC
//
//  Created by Wang Frank on 12-3-2.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Greeting.h"

@class Greeting;

@interface Greeter : NSObject
{
    NSString *greetingText;
    Greeting *normalGreeting;
    Greeting *vipGreeting;
    NSString *normalGreetingText;
    NSString *vipGreetingText;
}

- (NSString*) greetingText;
- (void) setVipGreeting: (Greeting*) vipGreetingClass;
- (void) setGreeting: (Greeting*) normalGreetingClass;
- (void) issueGreeting: (int) whichGreeting;
- (void) SetGreetingText2: (NSString *)normalText vipText: (NSString *)vipText;
- (void) setGreetingText3: (Greeting *)normalGreetingClass vipGreeting:(Greeting *)vipGreetingClass;

@end
