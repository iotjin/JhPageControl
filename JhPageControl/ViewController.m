//
//  ViewController.m
//  JhPageControl
//
//  Created by Jh on 2018/11/22.
//  Copyright © 2018 Jh. All rights reserved.
//

#import "ViewController.h"
#import "JhPageControl.h"

#define Kwidth  [UIScreen mainScreen].bounds.size.width
#define Kheight  [UIScreen mainScreen].bounds.size.height

#define JhColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define JhRandomColor JhColor(arc4random_uniform(255), arc4random_uniform(255), arc4random_uniform(255))

#define kMaxPage  6

@interface ViewController ()

@property (nonatomic, strong)  JhPageControl *pageControl;

@property (nonatomic, strong)  JhPageControl *pageControl2;

@property (nonatomic, strong)  JhPageControl *pageControl3;

@end

@implementation ViewController


-(JhPageControl *)pageControl{
    if (!_pageControl) {
        JhPageControl *pageControl = [[JhPageControl alloc] init];
        CGFloat pageControl_X = 0;
        CGFloat pageControl_Y = 100;
        pageControl.frame = CGRectMake(pageControl_X, pageControl_Y, Kwidth, 15);
        pageControl.numberOfPages = kMaxPage;
        pageControl.currentPage = 1;
        pageControl.otherColor = JhRandomColor;
        pageControl.currentColor = JhRandomColor;
        pageControl.PageControlContentMode = JhPageControlContentModeLeft; //设置对齐方式
        pageControl.controlSpacing = 3.0;
        pageControl.marginSpacing = 10;  //距离初始位置 间距  默认10
        pageControl.controlSize = CGSizeMake(5, 5);//如果设置PageControlStyle,则失效
        _pageControl =pageControl;
        [self.view addSubview:self.pageControl];
    }
    return _pageControl;
}


-(JhPageControl *)pageControl2{
    if (!_pageControl2) {
        
        JhPageControl *pageControl = [[JhPageControl alloc] init];
        CGFloat pageControl_X = 0;
        CGFloat pageControl_Y = 200;
        pageControl.frame = CGRectMake(pageControl_X, pageControl_Y, Kwidth, 15);
        pageControl.numberOfPages = kMaxPage;
        pageControl.currentPage = 1;
        pageControl.otherColor = JhRandomColor;
        pageControl.currentColor = JhRandomColor;
        pageControl.PageControlContentMode = JhPageControlContentModeCenter; //设置对齐方式
        pageControl.controlSpacing = 5.0; //间距
        pageControl.marginSpacing = 0;  //距离初始位置 间距  默认10

        pageControl.PageControlStyle = JhPageControlStyelDotAndRectangle; //圆点 + 长条 样式
//        pageControl.controlSize = CGSizeMake(15, 2);//如果设置PageControlStyle,则失效
        
        _pageControl2 =pageControl;
        [self.view addSubview:self.pageControl2];
        
    }
    return _pageControl2;
}


-(JhPageControl *)pageControl3{
    if (!_pageControl3) {
        
        JhPageControl *pageControl = [[JhPageControl alloc] init];
        CGFloat pageControl_X = 0;
        CGFloat pageControl_Y = 300;
        pageControl.frame = CGRectMake(pageControl_X, pageControl_Y, Kwidth, 15);
        pageControl.numberOfPages = kMaxPage;
        pageControl.currentPage = 1;
        pageControl.otherColor = JhRandomColor;
        pageControl.currentColor = JhRandomColor;
        pageControl.PageControlContentMode = JhPageControlContentModeRight; //设置对齐方式
        pageControl.controlSpacing = 3.0;  //间距
        pageControl.marginSpacing = 10;  //距离初始位置 间距  默认10
        
        pageControl.PageControlStyle = JhPageControlStyelRectangle;//长条样式
        
        _pageControl3 =pageControl;
        [self.view addSubview:self.pageControl3];
        
    }
    return _pageControl3;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self pageControl];
    [self pageControl2];
    [self pageControl3];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(click)];
    [self.view addGestureRecognizer:tapGesture];
    
}




-(void)click{
    
    
    _pageControl.currentPage ++;
    _pageControl2.currentPage ++;
    _pageControl3.currentPage ++;
    
    if (_pageControl.currentPage == kMaxPage) {
        _pageControl.currentPage = 0;
    }
    if (_pageControl2.currentPage == kMaxPage) {
        _pageControl2.currentPage = 0;
    }
    if (_pageControl3.currentPage == kMaxPage) {
        _pageControl3.currentPage = 0;
    }
    
    
    
    
}



@end
