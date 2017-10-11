//
//  NSString+Validation.h
//  Lesson_17-18_CoreData
//
//  Created by Andrey Proskurin on 10.10.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Validation)

@property (readonly) NSString *value;

- (BOOL)isEqualToName:(NSString *)name;

@end
