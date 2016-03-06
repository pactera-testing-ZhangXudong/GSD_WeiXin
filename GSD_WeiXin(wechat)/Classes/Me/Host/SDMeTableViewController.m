//
//  SDMeTableViewController.m
//  GSD_WeiXin(wechat)
//
//  Created by aier on 16/2/10.
//  Copyright © 2016年 GSD. All rights reserved.
//

#import "SDMeTableViewController.h"

@interface SDMeTableViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *iconView;

@end

@implementation SDMeTableViewController

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    
    return [[UIStoryboard storyboardWithName:@"SDMeTableViewController" bundle:nil] instantiateInitialViewController];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.iconView.layer.cornerRadius = 5;
    self.iconView.clipsToBounds = YES;
    
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
