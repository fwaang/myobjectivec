//
//  NewCoupon2.m
//  HelloObjectiveC
//
//  Created by Wang Frank on 12-3-9.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "NewCoupon2.h"
#define INITIAL_NEW_COUPLE2_ALLOCATION 150
static int availableNewCoupons2 = INITIAL_NEW_COUPLE2_ALLOCATION;

@implementation NewCoupon2
+ (int) availableCoupons
{
    return availableNewCoupons2;
}

+(void) setAvailableCoupons:(int)inAvailableCoupons
{
    availableNewCoupons2 = inAvailableCoupons;
}

@end
