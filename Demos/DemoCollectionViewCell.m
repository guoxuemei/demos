//
//  DemoCollectionViewCell.m
//  Demos
//
//  Created by lixiaofei on 15/11/10.
//  Copyright © 2015年 lxf. All rights reserved.
//

#import "DemoCollectionViewCell.h"

@implementation DemoCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        _titleLabel = [[UILabel alloc] initWithFrame:self.contentView.bounds];
        _titleLabel.backgroundColor = [UIColor lightGrayColor];
        [self.contentView addSubview:_titleLabel];
        
    }
    
    return self;
}

@end
