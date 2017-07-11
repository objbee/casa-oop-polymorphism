//
//  BaseViewController.m
//  casa-oop-polymorphism
//
//  Created by yuanye on 2017/7/11.
//  Copyright © 2017年 yuanye. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController () <BaseViewControllerProtocol>

@end

@implementation BaseViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.title = NSStringFromClass(self.class);
    
    if ([self respondsToSelector:@selector(log)]) {
        [self log];
    }
    
    [self mustLog];
}

- (void)log
{
    NSLog(@"log - Base");
}

- (void)mustLog
{
    NSLog(@"mustLog - Base");
}

@end
