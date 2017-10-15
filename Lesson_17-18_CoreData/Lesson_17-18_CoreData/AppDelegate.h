//
//  AppDelegate.h
//  Lesson_17-18_CoreData
//
//  Created by Andrey Proskurin on 10.10.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer; // содержит стек кордаты

- (void)saveContext;


@end

