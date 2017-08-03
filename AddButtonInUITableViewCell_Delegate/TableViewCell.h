//
//  TableViewCell.h
//  AddButtonInUITableViewCell_Delegate
//
//  Created by pengjiaxin on 2017/8/3.
//  Copyright © 2017年 pengjiaxin. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CellDelegate <NSObject>

- (void)closeTerm:(UIButton *)button;

@end


@interface TableViewCell : UITableViewCell
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIButton *button;

@property (assign, nonatomic) id<CellDelegate> delegate;
//button点击方法
- (void)buttonAction:(UIButton *)sender;
@end
