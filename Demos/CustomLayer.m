//
//  CustomLayer.m
//  Demos
//
//  Created by lixiaofei on 15/11/11.
//  Copyright © 2015年 lxf. All rights reserved.
//

#import "CustomLayer.h"

@implementation CustomLayer

- (void)drawInContext:(CGContextRef)ctx {
    NSLog(@"%s line:%d",__FUNCTION__,__LINE__);
    NSLog(@"%@",ctx);
    
    CGContextSetRGBFillColor(ctx, 0.5, 0.5, 0.5, 0.9);
    CGContextSetRGBStrokeColor(ctx, 0.7, 0.7, 0.7, 1);
    
    CGContextMoveToPoint(ctx, 94.5, 33.5);
    
    //// Star Drawing
    CGContextAddLineToPoint(ctx,104.02, 47.39);
    CGContextAddLineToPoint(ctx,120.18, 52.16);
    CGContextAddLineToPoint(ctx,109.91, 65.51);
    CGContextAddLineToPoint(ctx,110.37, 82.34);
    CGContextAddLineToPoint(ctx,94.5, 76.7);
    CGContextAddLineToPoint(ctx,78.63, 82.34);
    CGContextAddLineToPoint(ctx,79.09, 65.51);
    CGContextAddLineToPoint(ctx,68.82, 52.16);
    CGContextAddLineToPoint(ctx,84.98, 47.39);
    
    CGContextClosePath(ctx);
    CGContextDrawPath(ctx, kCGPathFillStroke);
}

@end
