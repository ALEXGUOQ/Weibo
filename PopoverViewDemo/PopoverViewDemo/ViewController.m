//
//  ViewController.m
//  PopoverViewDemo
//
//  Created by gryphon on 15/7/27.
//  Copyright (c) 2015年 FalConnect. All rights reserved.
//

#import "ViewController.h"
#import "PopoverView.h"

@interface ViewController ()
- (IBAction)click:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
}

- (IBAction)click:(UIButton *)sender {
    PopoverView *pop = [PopoverView showPopoverAtPoint:sender.center inView:nil withContentView:[UIButton buttonWithType:UIButtonTypeContactAdd] delegate:nil];
//    pop.showDividerRects = YES;
    [pop showSuccess];
}
@end
