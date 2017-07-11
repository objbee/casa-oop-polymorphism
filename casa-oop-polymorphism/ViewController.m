//
//  ViewController.m
//  casa-oop-polymorphism
//
//  Created by yuanye on 2017/7/11.
//  Copyright © 2017年 yuanye. All rights reserved.
//

#import "ViewController.h"
#import "AViewController.h"
#import "BViewController.h"
#import "AApiManager.h"
#import "BApiManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = NSStringFromClass(self.class);

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        // 未重载父类方法，调用父类 log()，先调用父类 mustLog()，再调用子类 mustLog()
        AViewController *aVC = [[AViewController alloc] init];
        [self.navigationController pushViewController:aVC animated:YES];
    });
    
    AApiManager *aAM = [[AApiManager alloc] init];
    NSLog(@"%@", aAM);
    
    // BApiManager 没有遵守 BaseApiManagerProtocol 协议，报错
//    BApiManager *bAM = [[BApiManager alloc] init];
//    NSLog(@"%@", bAM);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    // 重载父类方法，调用子类 log()，调用父类 mustLog()
    BViewController *bVC = [[BViewController alloc] init];
    [self.navigationController pushViewController:bVC animated:YES];
}

- (NSString *)title
{
    return NSStringFromClass(self.class);
}

@end
