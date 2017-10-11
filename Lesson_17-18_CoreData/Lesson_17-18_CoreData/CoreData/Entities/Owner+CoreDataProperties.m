//
//  Owner+CoreDataProperties.m
//  Lesson_17-18_CoreData
//
//  Created by Andrey Proskurin on 11.10.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//
//

#import "Owner+CoreDataProperties.h"

@implementation Owner (CoreDataProperties)

+ (NSFetchRequest<Owner *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Owner"];
}

@dynamic age;
@dynamic name;
@dynamic cars;

@end
