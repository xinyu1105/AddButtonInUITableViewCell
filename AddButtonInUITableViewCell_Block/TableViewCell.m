//
//  TableViewCell.m
//  AddButtonInUITableViewCell
//
//  Created by pengjiaxin on 2017/8/2.
//  Copyright © 2017年 pengjiaxin. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self) {
        self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
        [self createUI];
    }
    return self;
}

-(void)createUI{
    self.titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 15, 100, 30)];
    _titleLabel.font = [UIFont systemFontOfSize:13];
    _titleLabel.textColor = [UIColor redColor];
    _titleLabel.backgroundColor = [UIColor greenColor];
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    [self.contentView addSubview:_titleLabel];
    
    self.button = [UIButton buttonWithType:UIButtonTypeCustom];
    _button.backgroundColor = [UIColor orangeColor];
    _button.frame = CGRectMake(375-120, 15, 110, 30);
    [_button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    _button.titleLabel.font = [UIFont systemFontOfSize:14];
    [self.contentView addSubview:_button];
}
//button点击方法实现
-(void)buttonAction:(UIButton *)sender{
    if (self.block) {
        self.block(self.button.titleLabel.text);
    }
}

//方法三:
//自定义block方法
- (void)handlerButtonAction:(block)block{
    self.block = block;
}
@end
