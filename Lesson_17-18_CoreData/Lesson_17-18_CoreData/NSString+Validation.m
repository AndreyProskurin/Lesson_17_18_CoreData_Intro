//
//  NSString+Validation.m
//  Lesson_17-18_CoreData
//
//  Created by Andrey Proskurin on 10.10.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import "NSString+Validation.h"

@implementation NSString (Validation)

- (BOOL)isEqualToName:(NSString *)name {
    return [self isEqualToString:name];
}

- (NSString *)value {
    return self;
}

@end
