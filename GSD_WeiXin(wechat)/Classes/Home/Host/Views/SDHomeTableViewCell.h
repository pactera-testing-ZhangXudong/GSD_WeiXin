//
//  SDHomeTableViewCell.h
//  GSD_WeiXin(wechat)
//
//  Created by aier on 16/2/10.
//  Copyright © 2016年 GSD. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "SDHomeTableViewCellModel.h"

@interface SDHomeTableViewCell : UITableViewCell

@property (nonatomic, strong) UIImageView *iconImageView;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *timeLabel;
@property (nonatomic, strong) UILabel *messageLabel;

@property (nonatomic, strong) SDHomeTableViewCellModel *model;

+ (CGFloat)fixedHeight;

@end
