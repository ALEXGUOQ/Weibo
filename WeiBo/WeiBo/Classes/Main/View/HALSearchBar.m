//
//  HALSearchBar.m
//  WeiBo
//
//  Created by gryphon on 15/7/27.
//  Copyright (c) 2015年 FalConnect. All rights reserved.
//

#import "HALSearchBar.h"
#import "UIView+Extension.h"

@implementation HALSearchBar

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    
    if (self) {
        self.background = [UIImage imageNamed:@"searchbar_textfield_background"];
        self.clearsOnBeginEditing = YES;
        self.clearButtonMode = UITextFieldViewModeAlways;
        self.placeholder = @"请输入搜索条件";
        self.font = [UIFont systemFontOfSize:13];
        
        UIImageView *searchIcon = [[UIImageView alloc] init];
        searchIcon.image = [UIImage imageNamed:@"searchbar_textfield_search_icon"];
        searchIcon.width = 30;
        searchIcon.height = 30;
        searchIcon.contentMode = UIViewContentModeCenter;
        self.leftView = searchIcon;
        self.leftViewMode = UITextFieldViewModeAlways;
    }
    
    return self;
}

+(instancetype)searchBar{
    return [[self alloc]init];
}

@end
