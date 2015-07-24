//
//  UIBarButtonItem+Extension.h
//  WeiBo
//
//  Created by gryphon on 15/7/24.
//  Copyright (c) 2015年 FalConnect. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)

+(UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image heightImage:(NSString *)heightImage;
@end
