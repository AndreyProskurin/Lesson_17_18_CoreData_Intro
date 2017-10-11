//
//  Car+CoreDataProperties.h
//  Lesson_17-18_CoreData
//
//  Created by Andrey Proskurin on 11.10.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//
//

#import "Car+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Car (CoreDataProperties)

+ (NSFetchRequest<Car *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *name;
@property (nonatomic) float speed;
@property (nullable, nonatomic, retain) Owner *owner;

@end

NS_ASSUME_NONNULL_END
