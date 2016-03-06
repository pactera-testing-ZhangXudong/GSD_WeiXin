//
//  SDTimeLineCell.h
//  GSD_WeiXin(wechat)
//
//  Created by gsd on 16/2/25.
//  Copyright © 2016年 GSD. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SDTimeLineCellModel;

@interface SDTimeLineCell : UITableViewCell

@property (nonatomic, strong) SDTimeLineCellModel *model;

@property (nonatomic, strong) NSIndexPath *indexPath;

@property (nonatomic, copy) void (^moreButtonClickedBlock)(NSIndexPath *indexPath);

@end
