//
//  HALMessageController.m
//  HALWeibo
//
//  Created by gryphon on 15/7/23.
//  Copyright (c) 2015年 FalConnect. All rights reserved.
//

#import "HALMessageController.h"
#import "HALTestViewController.h"
#import "UIBarButtonItem+Extension.h"

@interface HALMessageController ()

@end

@implementation HALMessageController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"写私信" style:UIBarButtonItemStylePlain target:self action:@selector(words)];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationItem.rightBarButtonItem.enabled = NO;
}

-(void)words{
    NSLog(@"----- 写私信");
}


#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"message";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"test-message-%ld",indexPath.row];
    
    return cell;
}

#pragma mark - 代理方法
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    HALTestViewController *test = [[HALTestViewController alloc] init];
    [self.navigationController pushViewController:test animated:YES];
}

@end
