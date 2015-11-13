//
//  AuthCodeView.h
//  Demos
//
//  Created by lixiaofei on 15/11/10.
//  Copyright © 2015年 lxf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AuthCodeView : UIView

//验证码字符串@"7493"
@property (nonatomic ,copy) NSString *authCodeStr;
//验证码的长度,默认为4位
@property (nonatomic ,assign) int codeLength;

//刷新验证码
- (void)refreshAuthCode;

@end
