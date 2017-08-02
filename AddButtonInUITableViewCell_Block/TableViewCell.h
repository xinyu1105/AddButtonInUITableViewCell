//
//  TableViewCell.h
//  AddButtonInUITableViewCell
//
//  Created by pengjiaxin on 2017/8/2.
//  Copyright © 2017年 pengjiaxin. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^block)(NSString *buttonTitle);

@interface TableViewCell : UITableViewCell
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIButton *button;

//方法一:block属性
@property (nonatomic, copy) block block;

//方法二:
//与上面block属性 写法 等价
//@property (nonatomic, copy) void (^block)(NSString *buttonTitle);

//方法三:
//自定义block方法
- (void)handlerButtonAction:(block)block;
@end
