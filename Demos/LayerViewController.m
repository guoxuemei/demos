//
//  LayerViewController.m
//  Demos
//
//  Created by lixiaofei on 15/11/10.
//  Copyright © 2015年 lxf. All rights reserved.
//

#import "LayerViewController.h"
#import "CustomView.h"
#import "SubView.h"

@interface LayerViewController ()

@property (nonatomic ,strong) CALayer *layer;

@end

@implementation LayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIImage *image = [UIImage imageNamed:@"teamAvatar.png"];
    
    //阴影效果
    CALayer *shadowLayer = [CALayer layer];
    shadowLayer.shadowColor = [UIColor redColor].CGColor;
    shadowLayer.shadowOffset = CGSizeMake(5, 4);
    shadowLayer.shadowOpacity = 1;
    shadowLayer.bounds = CGRectMake(0, 0, image.size.width,image.size.height);
    shadowLayer.position = CGPointMake(160,100);
    shadowLayer.backgroundColor = [UIColor whiteColor].CGColor;//不设置背景色的话,阴影色显示不出来?
    shadowLayer.cornerRadius = image.size.width/2;
    [self.view.layer addSublayer:shadowLayer];
    
    
    //第一种绘制图层方式,使用代理
    _layer = [CALayer layer];
    _layer.bounds = CGRectMake(0, 0, image.size.width,image.size.height);
    _layer.position = CGPointMake(160, 100);
    _layer.cornerRadius = image.size.width/2;
    _layer.masksToBounds = YES;//蒙版图层也要切圆角
    //①
    _layer.delegate = self;//需调用setNeedsDisplay,才会调用- drawLayer: inContext:,dealloc 中设为 nil
    //②
//    _layer.transform = CATransform3DMakeRotation(M_PI, 1, 0, 0);//旋转方式1
    [_layer setValue:@(M_PI) forKeyPath:@"transform.rotation.x"];//旋转方式2

    //③
//    _layer.contents = (id)image.CGImage;//需要 CGImageRef,不可调用setNeedsDisplay,不用旋转
    [self.view.layer addSublayer:_layer];
    //④
    [_layer setNeedsDisplay];


    //第二种绘制图层方式,使用自定义图层,实现其 drawInContext:方法
    
    CustomView *view = [[CustomView alloc] initWithFrame:CGRectMake(0, 200, 300, 300)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    
    SubView *subView = [[SubView alloc] init];
    NSLog(@"5:%@",NSStringFromClass([subView class]));
    NSLog(@"6:%@",NSStringFromClass([subView.superclass class]));
    NSLog(@"7:%@",NSStringFromClass([subView superclass]));
    NSLog(@"8:%@",NSStringFromClass([subView.superclass superclass]));
}
//⑤
- (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx {
    
    CGContextSaveGState(ctx);
    UIImage *image = [UIImage imageNamed:@"teamAvatar"];
    //⑥转换坐标系,效果同②
//    CGContextScaleCTM(ctx, 1, -1);
//    CGContextTranslateCTM(ctx, 0, -image.size.height);
    
    CGContextDrawImage(ctx, CGRectMake(0, 0, image.size.width, image.size.height), image.CGImage);
    
    CGContextRestoreGState(ctx);
}
- (void)dealloc {
    _layer.delegate = nil;//不设置 delegate 为nil,pop 返回时,会导致崩溃
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
