//
//  UIView+Geometry.m
//  Demos
//
//  Created by gxm on 15/11/13.
//  Copyright © 2015年 gxm. All rights reserved.
//

#import "UIView+Geometry.h"

@implementation UIView (Geometry)

/** 一个视图的左边x的位置 */
- (CGFloat)left {
    
    return self.frame.origin.x;
    
}

/** 设置视图左边x的位置 */
- (void)setLeft:(CGFloat)left {
    
    CGRect frame = self.frame;
    frame.origin.x = left;
    self.frame = frame;
    
}

/** 一个视图的顶部y的位置 */
- (CGFloat)top {
    
    return self.frame.origin.y;
    
}

/** 设置视图上边y的位置 */
- (void)setTop:(CGFloat)top {
    
    CGRect frame = self.frame;
    frame.origin.y = top;
    self.frame = frame;
    
}

/** 一个视图的右边x的位置 */
- (CGFloat)right {
    
    return self.frame.origin.x + self.frame.size.width;
    
}

/** 设置视图右边x的位置 */
- (void)setRight:(CGFloat)right {
    
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
    
}

/** 一个视图的底部y的位置 */
- (CGFloat)bottom {
    
    return self.frame.origin.y + self.frame.size.height;
    
}

/** 设置视图下边y的位置 */
- (void)setBottom:(CGFloat)bottom {
    
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
    
}

/** 中心x位置 */
- (CGFloat)centerX {
    
    return self.center.x;
    
}

- (void)setCenterX:(CGFloat)centerX {
    
    self.center = CGPointMake(centerX, self.center.y);
    
}

/** 中心y位置 */
- (CGFloat)centerY {
    
    return self.center.y;
    
}

- (void)setCenterY:(CGFloat)centerY {
    
    self.center = CGPointMake(self.center.x, centerY);
    
}

/** 宽度 */
- (CGFloat)width {
   
    return self.frame.size.width;
    
}

- (void)setWidth:(CGFloat)width {
    
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
    
}

/** 高度 */
- (CGFloat)height {
    
    return self.frame.size.height;
    
}

- (void)setHeight:(CGFloat)height {
    
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
    
}

/** 原点坐标 */
- (CGPoint)origin {
    
    return self.frame.origin;
    
}

- (void)setOrigin:(CGPoint)origin {
   
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
    
}

/** 大小尺寸 */
- (CGSize)size {
   
    return self.frame.size;
    
}

- (void)setSize:(CGSize)size {
   
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
    
}
/** 右上角的点 */
- (CGPoint)topRight {
    
    return CGPointMake(self.right, self.top);
    
}

- (void)setTopRight:(CGPoint)topRight {
    
    CGRect frame = self.frame;
    frame.origin.x = topRight.x - self.width;
    frame.origin.y = topRight.y;
    self.frame = frame;
    
}

/** 左下角的点 */
- (CGPoint)bottomLeft {
    
    return CGPointMake(self.left, self.bottom);
    
}

- (void)setBottomLeft:(CGPoint)bottomLeft {
    
    CGRect frame = self.frame;
    frame.origin.x = bottomLeft.x;
    frame.origin.y = bottomLeft.y - self.height;
    self.frame = frame;
    
}

/** 右下角的点 */
- (CGPoint)bottomRight{
    
    return CGPointMake(self.right, self.bottom);
    
}

- (void)setBottomRight:(CGPoint)bottomRight {
    
    CGRect frame = self.frame;
    frame.origin.x = bottomRight.x - self.width;
    frame.origin.y = bottomRight.y - self.height;
    self.frame = frame;
    
}
@end
