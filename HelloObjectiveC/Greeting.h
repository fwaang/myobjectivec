//
//  Greeting.h
//  HelloObjectiveC
//
//  Created by Wang Frank on 12-3-2.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Greeting : NSObject

{
    NSString* helloText;
}

- (NSString *) helloText;
- (void) setHelloText: (NSString *) newText;

@end
