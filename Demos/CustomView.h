//
//  CustomView.h
//  Demos
//
//  Created by lixiaofei on 15/11/11.
//  Copyright © 2015年 lxf. All rights reserved.
//

#import <UIKit/UIKit.h>

/*!
 *  @brief  UIView创建图层会自动设置图层代理为其自身,需调用 setNeedsDisplay 方法以及 drawLayer: inContext:方法
 */
@interface CustomView : UIView

@end
