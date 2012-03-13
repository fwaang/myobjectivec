//
//  Accumulator.h
//  HelloObjectiveC
//
//  Created by Wang Frank on 12-3-8.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Accumulator : NSObject
{
    int total;
}

- (void) addToTotal: (int) amount;
- (int) total;
- (void) zeroTotal;

@end
