//
//  AppDelegate+DataWorking.m
//  Lesson_17-18_CoreData
//
//  Created by Andrey Proskurin on 13.10.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import "AppDelegate+DataWorking.h"
#import "Car+CoreDataProperties.h"
#import "Owner+CoreDataProperties.h"

@implementation AppDelegate (DataWorking)

- (NSArray *)allCars { // получить все данные
    
    NSManagedObjectContext *context = self.persistentContainer.viewContext;
    NSFetchRequest *fetchedRequest = [Car fetchRequest];
    NSError *error = nil;
    
    NSArray *results = [context executeFetchRequest:fetchedRequest error:&error];
    
    if (error) {
        NSLog(@"%@", error.localizedDescription);
        return nil;
    }
    
    return results;
}

- (NSArray *)carsWithSpeed:(NSNumber *)speed forOwner:(Owner *)owner { // получить определенные данные (отфильтровав данные)
    
    NSManagedObjectContext *context = self.persistentContainer.viewContext;
    NSFetchRequest *fetchedRequest = [Car fetchRequest];
    NSError *error = nil;
    
    // NSPredicate - фильтрация данных по каким-то заданным параметрам
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"speed == %f && owner == %@", speed.floatValue, owner];
    [fetchedRequest setPredicate:predicate];
    
    NSArray *results = [context executeFetchRequest:fetchedRequest error:&error];
    
    if (error) {
        NSLog(@"%@", error.localizedDescription);
        return nil;
    }
    
    return results;
}

- (NSArray *)carsSortedBySpeed { // получить данные в отсортированном порядке по какому-то критерию
    NSManagedObjectContext *context = self.persistentContainer.viewContext;
    NSFetchRequest *fetchedRequest = [Car fetchRequest];
    NSError *error = nil;
    
    // сортировка (57 строка)
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"speed" ascending:YES];
    [fetchedRequest setSortDescriptors:@[sortDescriptor]];
    
    NSArray *results = [context executeFetchRequest:fetchedRequest error:&error];
    
    if (error) {
        NSLog(@"%@", error.localizedDescription);
        return nil;
    }
    
    return results;
}

- (void)removeCarWithSpeed:(NSNumber *)speed {
    NSManagedObjectContext *context = self.persistentContainer.viewContext;
    NSFetchRequest *fetchedRequest = [Car fetchRequest];
    NSError *error = nil;
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"speed == %f", speed.floatValue];
    [fetchedRequest setPredicate:predicate];
    
    NSArray *results = [context executeFetchRequest:fetchedRequest error:&error];
    
    if (error) {
        NSLog(@"%@", error.localizedDescription);
    } else {
        for (Car *car in results) {
            [context deleteObject:car];
            NSLog(@"Car has been deleted");
        }
        
    }

}

@end
