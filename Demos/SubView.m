//
//  SubView.m
//  Demos
//
//  Created by lixiaofei on 15/11/12.
//  Copyright © 2015年 lxf. All rights reserved.
//

#import "SubView.h"
//继承自 CustomView
@implementation SubView
- (NSString *)description {
    NSLog(@"%s line:%d",__FUNCTION__,__LINE__);
    return @"subView";
}
- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
        NSLog(@"1:%@",[self description]);
        NSLog(@"2:%@",[super description]);
       
    }
    
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
