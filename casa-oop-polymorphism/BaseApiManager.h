//
//  BaseApiManager.h
//  casa-oop-polymorphism
//
//  Created by yuanye on 2017/7/11.
//  Copyright © 2017年 yuanye. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BaseApiManagerProtocol <NSObject>

@required

- (void)logRequired;

@optional

- (void)logOptional;

@end

@interface BaseApiManager : NSObject

// 声明 child 属性，用于父类中调用子类中重载的方法
@property (nonatomic, weak) id<BaseApiManagerProtocol> child;

@end
