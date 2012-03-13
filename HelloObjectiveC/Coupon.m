//
//  Coupon.m
//  HelloObjectiveC
//
//  Created by Wang Frank on 12-3-9.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Coupon.h"

#define INITIAL_COUPON_ALLOCATION 100

static int availableCoupons = INITIAL_COUPON_ALLOCATION;

@interface Coupon()
+ (int) availableCoupons;
+ (void) setAvailableCoupons:(int) inAvailableCoupons;

@end

@implementation Coupon

+ (int) availableCoupons
{
    return availableCoupons;
}

+ (void) setAvailableCoupons:(int)inAvailableCoupons
{
    availableCoupons = inAvailableCoupons;
}

- (id) init
{
    if (self = [super init])
    {
        if ([[self class] availableCoupons] == 0)
        {
            // [self release];
            return nil;
        }
        [[self class] setAvailableCoupons:[[self class] availableCoupons] - 1];
    }
    return self;
}

+ (int) numberCouponLeft
{
    return [self availableCoupons];
}

+ (void) resetCoupon
{
    [self setAvailableCoupons:INITIAL_COUPON_ALLOCATION];
}

+ (void) initialize
{
    // if (self == [Coupon calss])
    {
        // availableCoupons = (int)[[NSUserDefaults standardUserDefaults] integerForKey:@"MoneyPool"]; 
        availableCoupons = INITIAL_COUPON_ALLOCATION;
    }
}

@end
