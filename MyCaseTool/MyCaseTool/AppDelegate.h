//
//  AppDelegate.h
//  MyCaseTool
//
//  Created by Wang Frank on 12-3-13.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
{
//    IBOutlet NSTextField *textField;
//    IBOutlet NSTextField *resultsField;
}

@property (assign) IBOutlet NSWindow *window;

@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;

- (IBAction)saveAction:(id)sender;

//- (IBAction)upperCase:(id)sender;
//- (IBAction)lowerCase:(id)sender;

@end
