//
//  main.m
//  FoundationExercise
//
//  Created by Wang Frank on 12-3-13.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

void testMutableArray(void);
void testMutableDictionary(void);


void testMutableArray(void)
{
    NSMutableArray *mutalbeFruitBasket = [NSMutableArray arrayWithObjects:@"Apple", @"Orange", @"Banana", nil];
    id myFruit = [mutalbeFruitBasket objectAtIndex:2];
    NSLog(@"myFruit: %@", myFruit);
    // id myFruit2 = [mutalbeFruitBasket objectAtIndex:3];
    // NSLog(@"myFruit: %@", myFruit2);
    [mutalbeFruitBasket insertObject:@"Kiwi" atIndex:3];
    NSLog(@"Fruit Basket: %@", mutalbeFruitBasket);    
}

void testMutableDictionary(void)
{
    NSMutableDictionary *friendAndFamilyDict = [NSMutableDictionary dictionaryWithCapacity:0];
    [friendAndFamilyDict setObject: @"Alex" forKey: @"RD workmate"];
    [friendAndFamilyDict setObject: @"Bor" forKey:@"boss"];
    [friendAndFamilyDict setObject:@"Bor" forKey:@"workmate"];
    NSLog(@"%@", friendAndFamilyDict);
    
    id oneFriend = [friendAndFamilyDict objectForKey:@"wife"];
    NSLog(@"%@", oneFriend);    
}

int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
    }
    return 0;
}

