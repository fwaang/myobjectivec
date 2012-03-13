//
//  NewCoupon.m
//  HelloObjectiveC
//
//  Created by Wang Frank on 12-3-9.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "NewCoupon.h"

#define INITIAL_NEW_COUPLE_ALLOCATION 50
static int availableNewCoupons = INITIAL_NEW_COUPLE_ALLOCATION;

@interface NewCoupon()
+ (int) availableCoupons;
+ (void) setAvailableCoupons:(int) inAvailableCoupons;

@end

@implementation NewCoupon
+ (int) availableCoupons
{
    return availableNewCoupons;
}

+(void) setAvailableCoupons:(int)inAvailableCoupons
{
    availableNewCoupons = inAvailableCoupons;
}
@end
