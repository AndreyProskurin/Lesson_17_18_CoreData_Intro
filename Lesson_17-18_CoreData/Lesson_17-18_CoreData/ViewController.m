//
//  ViewController.m
//  Lesson_17-18_CoreData
//
//  Created by Andrey Proskurin on 10.10.17.
//  Copyright © 2017 Andrey Proskurin. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Validation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *str = @"John";
    
    NSLog(@"%d", [str isEqualToName:@"John"]);
}

@end
