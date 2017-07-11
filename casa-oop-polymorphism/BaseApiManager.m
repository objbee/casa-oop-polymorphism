//
//  BaseApiManager.m
//  casa-oop-polymorphism
//
//  Created by yuanye on 2017/7/11.
//  Copyright © 2017年 yuanye. All rights reserved.
//

#import "BaseApiManager.h"

@implementation BaseApiManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        if ([self conformsToProtocol:@protocol(BaseApiManagerProtocol)]) {
            self.child = (id<BaseApiManagerProtocol>)self;
        } else {
            NSAssert(0, @"子类必须实现 BaseApiManagerProtocol");
        }
        [self doSth];
    }
    return self;
}

- (void)doSth
{
    [self.child logRequired];
    
    if ([self.child respondsToSelector:@selector(logOptional)]) {
        [self.child logOptional];
    }
}

@end
