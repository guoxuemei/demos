//
//  CustomView.m
//  Demos
//
//  Created by lixiaofei on 15/11/11.
//  Copyright © 2015年 lxf. All rights reserved.
//

#import "CustomView.h"
#import "CustomLayer.h"

@implementation CustomView

- (instancetype)initWithFrame:(CGRect)frame {
    NSLog(@"%s line:%d",__FUNCTION__,__LINE__);
    self = [super initWithFrame:frame];
    if (self) {
        
        CustomLayer *layer = [[CustomLayer alloc] init];
        layer.bounds = CGRectMake(0, 0, 185, 185);
        layer.position = CGPointMake(160, 150);
        layer.backgroundColor = [UIColor cyanColor].CGColor;
        
        [layer setNeedsDisplay];
        
        [self.layer addSublayer:layer];
    }
    
    return self;
}
- (NSString *)description {
    NSLog(@"%s line:%d",__FUNCTION__,__LINE__);
    return @"CustomView";
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    NSLog(@"%s line:%d",__FUNCTION__,__LINE__);
    NSLog(@"%@",UIGraphicsGetCurrentContext());
    [super drawRect:rect];
}

- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx {
    NSLog(@"%s line:%d",__FUNCTION__,__LINE__);
    NSLog(@"%@,%@",ctx,layer.delegate);
    
    [super drawLayer:layer inContext:ctx];
}
@end
