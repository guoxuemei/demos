//
//  ViewController.m
//  Demos
//
//  Created by lixiaofei on 15/11/10.
//  Copyright © 2015年 lxf. All rights reserved.
//

#import "ViewController.h"
#import "AuthCodeViewController.h"
#import "LayerViewController.h"
#import "DemoCollectionViewCell.h"

@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
@property (nonatomic ,strong)UICollectionView *collectionView;
@property (nonatomic ,copy) NSArray *itemsArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.itemsArray = [[NSArray alloc] initWithObjects:@"AuthCode",@"CALayer",@"待续", nil];
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.minimumInteritemSpacing = 2;
    
    self.collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:flowLayout];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    [self.collectionView registerClass:[DemoCollectionViewCell class] forCellWithReuseIdentifier:@"DemoIdentifier"];
    [self.view addSubview:self.collectionView];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return self.itemsArray.count;
    
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *identifier = @"DemoIdentifier";
    DemoCollectionViewCell *cell = (DemoCollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];

    cell.titleLabel.text = self.itemsArray[indexPath.row];
    return cell;
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 1) {
        return CGSizeMake(self.view.bounds.size.width/2, 100) ;

    } else {
        return CGSizeMake(150, 250);
    }
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    switch (indexPath.row) {
        case 0: {
            AuthCodeViewController *viewController = [[AuthCodeViewController alloc] init];
            
            [self.navigationController pushViewController:viewController animated:YES];
        }
            break;
        case 1: {
            LayerViewController *viewController = [[LayerViewController alloc] init];
            
            [self.navigationController pushViewController:viewController animated:YES];
        }
            break;
            
        default:
            break;
    }
}
//iOS 客户端与 js 网页交互流程,在代理方法中处理
- (BOOL)webView:(UIWebView*)webView shouldStartLoadWithRequest:(NSURLRequest*)request navigationType:(UIWebViewNavigationType)navigationType
{
    BOOL condition ;
    //condition : 符合客户端处理的条件的话,为 YES, 否则为 NO.
    //...e.g.与网页端约定一套规则
    /*   NSString *urlString = [[request URL] absoluteString];
         urlString = [urlString stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
         NSArray *urlComps = [urlString componentsSeparatedByString:@"://"];
         ...
    */
    if (condition) {
        //push 到别的页面啥的
        return NO;//不再加载网页
    }
    return YES;//其他情况继续加载
}
@end
