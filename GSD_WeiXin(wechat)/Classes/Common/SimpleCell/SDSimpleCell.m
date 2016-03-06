//
//  SDSimpleCell.m
//  GSD_WeiXin(wechat)
//
//  Created by gsd on 16/3/4.
//  Copyright © 2016年 GSD. All rights reserved.
//

#import "SDSimpleCell.h"

@implementation SDSimpleCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setupView];
    }
    return self;
}

- (void)setupView
{
    _iconImageView = [UIImageView new];
    _titleLable = [UILabel new];
    
    [self.contentView addSubview:_iconImageView];
    [self.contentView addSubview:_titleLable];
}

@end
