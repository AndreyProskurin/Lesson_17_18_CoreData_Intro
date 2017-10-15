//
//  AppDelegate+DataWorking.h
//  Lesson_17-18_CoreData
//
//  Created by Andrey Proskurin on 13.10.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import "AppDelegate.h"

@class Owner, Car;

@interface AppDelegate (DataWorking)

- (NSArray *)allCars;
- (NSArray *)carsWithSpeed:(NSNumber *)speed forOwner:(Owner *)owner;
- (NSArray *)carsSortedBySpeed;
- (void)removeCarWithSpeed:(NSNumber *)speed;

@end
