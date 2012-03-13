//
//  NamedAccumulator.h
//  HelloObjectiveC
//
//  Created by Wang Frank on 12-3-8.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "Accumulator.h"

@interface NamedAccumulator : Accumulator
{
    NSString *name;

}

- (NSString *) name;
- (void) setName: (NSString *) newName;
- (void) addToTotal:(int)amount;

- (id) initWithName: (NSString *) newName;
- (id) initWithName:(NSString *)newName amount:(int)amount;
- (id) init;
@end
