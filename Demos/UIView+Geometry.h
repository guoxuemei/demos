//
//  UIView+Geometry.h
//  Demos
//
//  Created by gxm on 15/11/13.
//  Copyright © 2015年 gxm. All rights reserved.
//

#import <UIKit/UIKit.h>

/** 获取指定 Rect 的 center */
CGPoint CGRectGetCenter(CGRect rect);

CGRect  CGRectMoveToCenter(CGRect rect, CGPoint center);

/*!
 *  @brief  坐标相关
 */
@interface UIView (Geometry)

/** frame.origin.x */
@property (nonatomic , assign) CGFloat left;

/** frame.origin.y */
@property (nonatomic , assign) CGFloat top;

/** frame.origin.x + frame.size.width */
@property (nonatomic , assign) CGFloat right;

/** frame.origin.y + frame.size.height */
@property (nonatomic , assign) CGFloat bottom;

/** frame.size.width */
@property (nonatomic , assign) CGFloat width;

/** frame.size.height */
@property (nonatomic , assign) CGFloat height;

/** center.x */
@property (nonatomic , assign) CGFloat centerX;

/** center.y */
@property (nonatomic , assign) CGFloat centerY;

/** frame.origin and 左上角*/
@property (nonatomic , assign) CGPoint origin;

/** frame.size */
@property (nonatomic , assign) CGSize size;

/** 右上角 */
@property (nonatomic , assign) CGPoint topRight;

/** 左下角 */
@property (nonatomic , assign) CGPoint bottomLeft;

/** 右下角 */
@property (nonatomic , assign) CGPoint bottomRight;

@end
