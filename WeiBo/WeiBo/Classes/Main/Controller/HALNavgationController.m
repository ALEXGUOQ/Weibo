//
//  HALNavgationController.m
//  WeiBo
//
//  Created by gryphon on 15/7/24.
//  Copyright (c) 2015年 FalConnect. All rights reserved.
//

#import "HALNavgationController.h"
#import "UIBarButtonItem+Extension.h"

@interface HALNavgationController ()

@end

@implementation HALNavgationController

+(void)initialize{
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    
    NSMutableDictionary *normal = [NSMutableDictionary dictionary];
    normal[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [item setTitleTextAttributes:normal forState:UIControlStateNormal];
    
    
    NSMutableDictionary *disabled = [NSMutableDictionary dictionary];
    disabled[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    [item setTitleTextAttributes:disabled forState:UIControlStateDisabled];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (self.childViewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
        
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(back) image:@"navigationbar_back" heightImage:@"navigationbar_back_highlighted"];
        
        viewController.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(more) image:@"navigationbar_more" heightImage:@"navigationbar_more_highlighted"];
    }
    
    [super pushViewController:viewController animated:animated];
}

-(void)back{
    [self popViewControllerAnimated:YES];
}

-(void)more{
    [self popToRootViewControllerAnimated:YES];
}

@end
