//
//  AuthCodeView.m
//  Demos
//
//  Created by lixiaofei on 15/11/10.
//  Copyright © 2015年 lxf. All rights reserved.
//

#import "AuthCodeView.h"

@implementation AuthCodeView

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor lightGrayColor];
        self.layer.cornerRadius = 3;
        self.layer.masksToBounds = YES;
        self.userInteractionEnabled = YES;
        _codeLength = 4;
        _authCodeStr = [self getRandomAuthCode];
    }
    
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    [super drawRect:rect];
    
    //根据要显示的验证码字符串，根据长度，计算每个字符串显示的位置
    NSString *text = _authCodeStr;
    
    CGSize cSize = [@"0" sizeWithAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:21]}];
    
    CGFloat oneWidth = rect.size.width/text.length;//总长度等分
    CGFloat offsetX = (oneWidth - cSize.width) / 2;
    CGFloat offsetY = (rect.size.height - cSize.height) / 2;
    
    for ( int i = 0; i<text.length; i++) {
        
        CGPoint point = CGPointMake( oneWidth * i + offsetX, offsetY);
        
        unichar c = [text characterAtIndex:i];
        NSString *textC = [NSString stringWithFormat:@"%C", c];
        //设置一些属性,字体大小,字体颜色等
        [textC drawAtPoint:point withAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:21],NSForegroundColorAttributeName:[UIColor whiteColor]}];
    }
    
    
    
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self refreshAuthCode];
    
}

- (void)refreshAuthCode {
    
    self.authCodeStr = [self getRandomAuthCode];
    [self setNeedsDisplay];
    
}

- (NSString *)getRandomAuthCode {
    
    NSString *codeStr = @"";
    for (int i = 0; i < _codeLength; i++) {
        int singleCode =  arc4random() % 10;//0~9
        codeStr = [codeStr stringByAppendingString:[NSString stringWithFormat:@"%d",singleCode]];
    }
    
    return codeStr;
}

@end
