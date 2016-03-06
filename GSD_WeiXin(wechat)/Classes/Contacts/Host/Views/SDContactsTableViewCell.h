//
//  SDContactsTableViewCell.h
//  GSD_WeiXin(wechat)
//
//  Created by gsd on 16/3/3.
//  Copyright © 2016年 GSD. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SDContactModel;

@interface SDContactsTableViewCell : UITableViewCell

@property (nonatomic, strong) SDContactModel *model;

+ (CGFloat)fixedHeight;

@end
