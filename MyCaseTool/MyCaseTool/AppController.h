//
//  AppController.h
//  MyCaseTool
//
//  Created by Wang Frank on 12-3-13.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppController : NSObject
{
    IBOutlet NSTextField *textField;
    IBOutlet NSTextField *resultsField;
}

- (IBAction)uppercase:(id)sender;
- (IBAction)lowercase:(id)sender;

@end
