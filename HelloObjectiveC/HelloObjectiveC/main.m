//
//  main.m
//  HelloObjectiveC
//
//  Created by Wang Frank on 12-3-2.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Greeter.h"
#import "NamedAccumulator.h"
#import "Accumulator.h"
#import "Train.h"
#import "BulletTrain.h"
#import "Coupon.h"
#import "NewCoupon.h"
#import "NewCoupon2.h"

void testGreeter(void);
void testNamedAccumulator(void);
void testCopy(void);
void testTrain(void);
void testCoupon(void);

void testGreeter(void)
{
    Greeter* myGreeter = [[Greeter alloc] init];
    
    Greeting* myGreeting = [[Greeting alloc] init];
    Greeting* vipGreeting = [[Greeting alloc] init];
    Greeter* greeter2;
    
    [myGreeting setHelloText: @"This is the everyday greeting."];
    [vipGreeting setHelloText: @"This is the vip greeting."];
    
    [myGreeter setGreeting: myGreeting];
    [myGreeter setVipGreeting: vipGreeting];
    [myGreeter SetGreetingText2:@"This is the normal greeting." vipText:@"This is the vip greeting."];
    
    [myGreeter setGreetingText3:myGreeting vipGreeting:vipGreeting];
    
    id anObject = myGreeter;
    SEL optionalSelector = @selector(setGreetingText3:vipGreeting:);
    if ( [anObject respondsToSelector:optionalSelector] )
    {
        [anObject setGreetingText3:myGreeting vipGreeting:vipGreeting];
    }
    
    [myGreeter issueGreeting: 0];
    [myGreeter issueGreeting: 1];
    [myGreeter issueGreeting: 2];
    
    greeter2 = nil;
    [greeter2 issueGreeting:0];
    
    //    [myGreeter release];
    
    
}

void testNamedAccumulator(void)
{
//    NamedAccumulator* myNamedAccu = [[NamedAccumulator alloc] init];
    NamedAccumulator* myNamedAccu = [[NamedAccumulator alloc] initWithName:@"My Abacus"];
    [myNamedAccu setName:@"my abacus"];
    [myNamedAccu addToTotal:1];
    [myNamedAccu addToTotal:2];
    [myNamedAccu addToTotal:4];
}

void testCopy(void)
{
    Accumulator* myAccu1 = [[Accumulator alloc] init];
    Accumulator* myAccu2 = myAccu1;
    
    [myAccu2 addToTotal: 10];
    
    NamedAccumulator* myNamedAccu1 = [[NamedAccumulator alloc] init];
    NamedAccumulator* myNamedAccu2 = myNamedAccu1;
    
    [myNamedAccu2 addToTotal:20];
}

void testTrain(void)
{
    Class myTrain = [Train train];
    Class myBulletTrain = [BulletTrain train];
}

void testCoupon(void)
{
    NSLog(@"Coupon %d", [Coupon numberCouponLeft]);
    NSLog(@"New Coupon %d", [NewCoupon numberCouponLeft]);
    Class myCoupon = [Coupon class];
    NSLog(@"Coupon %d", [Coupon numberCouponLeft]);
    NSLog(@"New Coupon %d", [NewCoupon numberCouponLeft]);

    id myObject = [[myCoupon alloc] init];
    NSLog(@"Coupon %d", [Coupon numberCouponLeft]);
    NSLog(@"New Coupon %d", [NewCoupon numberCouponLeft]);

    Class myNewCoupon = [NewCoupon class];
    NSLog(@"Coupon %d", [Coupon numberCouponLeft]);
    NSLog(@"New Coupon %d", [NewCoupon numberCouponLeft]);
    id myNewObject = [[myNewCoupon alloc] init];
    NSLog(@"Coupon %d", [Coupon numberCouponLeft]);
    NSLog(@"New Coupon %d", [NewCoupon numberCouponLeft]);
    NSLog(@"New Coupon2 %d", [NewCoupon2 numberCouponLeft]);
    Class myNewCoupon2 = [NewCoupon2 class];
    id myNewObject2 = [[myNewCoupon2 alloc] init];
    NSLog(@"Coupon %d", [Coupon numberCouponLeft]);
    NSLog(@"New Coupon %d", [NewCoupon numberCouponLeft]);
    NSLog(@"New Coupon2 %d", [NewCoupon2 numberCouponLeft]);
    
    if ([myObject respondsToSelector:@selector(numberCouponLeft)])
    {
        // NSLog(@"%d", [myObject numberCouponsLeft]);
    }
    
    //NSLog(@"%d", [NewCoupon, number])
}

int main (int argc, const char * argv[])
{
    @autoreleasepool {
//    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    // testGreeter();
    // testNamedAccumulator();
    // testCopy();
    // testTrain();
        testCoupon();
//    [pool drain];
    }
    return 0;
}

