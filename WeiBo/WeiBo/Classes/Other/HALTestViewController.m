//
//  HALTestViewController.m
//  HALWeibo
//
//  Created by gryphon on 15/7/23.
//  Copyright (c) 2015年 FalConnect. All rights reserved.
//

#import "HALTestViewController.h"

@interface HALTestViewController ()

@end

@implementation HALTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"测试";
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [self.view addSubview:btn];
}

@end
