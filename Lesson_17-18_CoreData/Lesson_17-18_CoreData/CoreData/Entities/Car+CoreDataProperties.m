//
//  Car+CoreDataProperties.m
//  Lesson_17-18_CoreData
//
//  Created by Andrey Proskurin on 11.10.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//
//

#import "Car+CoreDataProperties.h"

@implementation Car (CoreDataProperties)

+ (NSFetchRequest<Car *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Car"];
}

@dynamic name;
@dynamic speed;
@dynamic owner;

@end
