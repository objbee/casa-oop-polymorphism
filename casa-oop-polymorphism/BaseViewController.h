//
//  BaseViewController.h
//  casa-oop-polymorphism
//
//  Created by yuanye on 2017/7/11.
//  Copyright © 2017年 yuanye. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BaseViewControllerProtocol <NSObject>

@optional

- (void)log;

@end

@interface BaseViewController : UIViewController

// 子类方法重写父类方法时必须使用 super 来调用父类的对应方法
- (void)mustLog NS_REQUIRES_SUPER;

@end
