//
//  SDDiscoverTableViewController.m
//  GSD_WeiXin(wechat)
//
//  Created by aier on 16/2/10.
//  Copyright © 2016年 GSD. All rights reserved.
//

#import "SDDiscoverTableViewController.h"
#import "SDTimeLineTableViewController.h"

@interface SDDiscoverTableViewController ()

@end

@implementation SDDiscoverTableViewController

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    
    return [[UIStoryboard storyboardWithName:@"SDDiscoverTableViewController" bundle:nil] instantiateInitialViewController];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.tableFooterView = [UIView new];
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 5;
}

@end
