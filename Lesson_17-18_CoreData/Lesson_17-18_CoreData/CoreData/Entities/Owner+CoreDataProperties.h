//
//  Owner+CoreDataProperties.h
//  Lesson_17-18_CoreData
//
//  Created by Andrey Proskurin on 11.10.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//
//

#import "Owner+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Owner (CoreDataProperties)

+ (NSFetchRequest<Owner *> *)fetchRequest;

@property (nonatomic) int16_t age;
@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, retain) NSSet<Car *> *cars;

@end

@interface Owner (CoreDataGeneratedAccessors)

- (void)addCarsObject:(Car *)value;
- (void)removeCarsObject:(Car *)value;
- (void)addCars:(NSSet<Car *> *)values;
- (void)removeCars:(NSSet<Car *> *)values;

@end

NS_ASSUME_NONNULL_END
