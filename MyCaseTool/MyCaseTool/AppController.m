//
//  AppController.m
//  MyCaseTool
//
//  Created by Wang Frank on 12-3-13.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "AppController.h"

@implementation AppController

- (id) init
{
    if (self = [super init]) {
        NSLog(@"init: text %@ / result %@", textField, resultsField);
    }
    return (self);
}

- (void) awakeFromNib
{
    [textField setStringValue:@"Enter text here"];
    [resultsField setStringValue:@"Results"];
}

- (IBAction)uppercase:(id)sender
{
    NSString *original;
    original = [textField stringValue];
    
    NSString *uppercase;
    uppercase = [original uppercaseString];
    
    [resultsField setStringValue:uppercase];
}

- (IBAction)lowercase:(id)sender
{
    NSString *original;
    original = [textField stringValue];
    
    NSString *uppercase;
    uppercase = [original lowercaseString];
    
    [resultsField setStringValue:uppercase];

}
@end
