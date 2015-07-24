//
//  HALMainViewController.m
//  HALWeibo
//
//  Created by gryphon on 15/7/23.
//  Copyright (c) 2015年 FalConnect. All rights reserved.
//

#import "HALMainViewController.h"

#import "HALHomeController.h"
#import "HALMessageController.h"
#import "HALDiscoverController.h"
#import "HALProfileController.h"
#import "HALNavgationController.h"

@interface HALMainViewController ()

@end

@implementation HALMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    HALHomeController *home = [[HALHomeController alloc] init];
    [self addChildViewController:home title:@"首页" image:@"tabbar_home" selectedImage:@"tabbar_home_selected"];
    
    HALMessageController *message = [[HALMessageController alloc] init];
    [self addChildViewController:message title:@"消息" image:@"tabbar_message_center" selectedImage:@"tabbar_message_center_selected"];
    
    HALDiscoverController *discover = [[HALDiscoverController alloc] init];
    [self addChildViewController:discover title:@"发现" image:@"tabbar_discover" selectedImage:@"tabbar_discover_selected"];
    
    HALProfileController *profile = [[HALProfileController alloc] init];
    [self addChildViewController:profile title:@"我" image:@"tabbar_profile" selectedImage:@"tabbar_profile_selected"];
}

-(void)addChildViewController:(UIViewController *)childController title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage{
    
    childController.title = title;
    childController.tabBarItem.image = [UIImage imageNamed:image];
    childController.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSMutableDictionary *selected = [NSMutableDictionary dictionary];
    selected[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [childController.tabBarItem setTitleTextAttributes:selected forState:UIControlStateSelected];
    
    HALNavgationController *nav = [[HALNavgationController alloc ] initWithRootViewController:childController];
    
    [self addChildViewController:nav];
}

@end
