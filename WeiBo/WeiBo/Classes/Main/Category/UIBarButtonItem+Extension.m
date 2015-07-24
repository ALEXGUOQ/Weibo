//
//  UIBarButtonItem+Extension.m
//  WeiBo
//
//  Created by gryphon on 15/7/24.
//  Copyright (c) 2015年 FalConnect. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)

+(UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image heightImage:(NSString *)heightImage{
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:heightImage] forState:UIControlStateHighlighted];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    CGRect frame = btn.frame;
    frame.size = btn.currentBackgroundImage.size;
    btn.frame = frame;
    
    return [[UIBarButtonItem alloc ]initWithCustomView:btn];
}
@end
