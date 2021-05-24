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

@interface ViewController ()<JhPageControlDelegate>

@property (nonatomic, strong)  JhPageControl *pageControl;

@property (nonatomic, strong)  JhPageControl *pageControl2;

@property (nonatomic, strong)  JhPageControl *pageControl3;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self pageControl];
    [self pageControl2];
    [self pageControl3];
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(OnClick)];
    [self.view addGestureRecognizer:tapGesture];
    
    //block 要写在 Jh_currentPage之前，否则第一次的不会触发
    self.pageControl.JhSelectBlock = ^(JhPageControl * _Nonnull pageControl, NSInteger clickIndex) {
        NSLog(@"pageControl1 block clickIndex %zd ",clickIndex);
    };
    self.pageControl2.JhSelectBlock = ^(JhPageControl * _Nonnull pageControl, NSInteger clickIndex) {
        NSLog(@"pageControl2 block clickIndex %zd ",clickIndex);
    };
}

- (void)OnClick {
    _pageControl.Jh_currentPage ++;
    _pageControl2.Jh_currentPage ++;
    _pageControl3.Jh_currentPage ++;
    if (_pageControl.Jh_currentPage == kMaxPage) {
        _pageControl.Jh_currentPage = 0;
    }
    if (_pageControl2.Jh_currentPage == kMaxPage) {
        _pageControl2.Jh_currentPage = 0;
    }
    if (_pageControl3.Jh_currentPage == kMaxPage) {
        _pageControl3.Jh_currentPage = 0;
    }
    
}

#pragma mark - JhPageControlDelegate
- (void)JhPageControlClick:(JhPageControl*)pageControl index:(NSInteger)clickIndex {
    NSLog(@" clickIndex %zd ",clickIndex);
}

- (JhPageControl *)pageControl {
    if (!_pageControl) {
        JhPageControl *pageControl = [[JhPageControl alloc] init];
        pageControl.delegate = self;
        CGFloat pageControl_X = 0;
        CGFloat pageControl_Y = 100;
        pageControl.frame = CGRectMake(pageControl_X, pageControl_Y, Kwidth, 15);
        pageControl.Jh_numberOfPages = kMaxPage;
        pageControl.Jh_currentPage = 1;
        pageControl.Jh_otherColor = JhRandomColor;
        pageControl.Jh_currentColor = JhRandomColor;
        pageControl.Jh_alignmentStyle = JhAlignmentStyleLeft; //设置对齐方式
        pageControl.Jh_controlSpacing = 3.0;
        pageControl.Jh_marginSpacing = 10;  //距离初始位置 间距  默认10
        pageControl.Jh_controlSize = CGSizeMake(5, 5);//如果设置Jh_pageControlStyle,则失效
        _pageControl = pageControl;
        [self.view addSubview:self.pageControl];
    }
    return _pageControl;
}

- (JhPageControl *)pageControl2 {
    if (!_pageControl2) {
        JhPageControl *pageControl = [[JhPageControl alloc] init];
        pageControl.delegate = self;
        CGFloat pageControl_X = 0;
        CGFloat pageControl_Y = 200;
        pageControl.frame = CGRectMake(pageControl_X, pageControl_Y, Kwidth, 15);
        pageControl.Jh_numberOfPages = kMaxPage;
        pageControl.Jh_currentPage = 1;
        pageControl.Jh_otherColor = JhRandomColor;
        pageControl.Jh_currentColor = JhRandomColor;
        pageControl.Jh_alignmentStyle = JhAlignmentStyleCenter; //设置对齐方式
        pageControl.Jh_controlSpacing = 5.0; //间距
        pageControl.Jh_marginSpacing = 0;  //距离初始位置 间距  默认10
        pageControl.Jh_pageControlStyle = JhPageControlStyelDotAndRectangle; //圆点 + 长条 样式
//        pageControl.Jh_controlSize = CGSizeMake(15, 2);//如果设置Jh_pageControlStyle,则失效
        _pageControl2 = pageControl;
        [self.view addSubview:self.pageControl2];
    }
    return _pageControl2;
}

- (JhPageControl *)pageControl3 {
    if (!_pageControl3) {
        JhPageControl *pageControl = [[JhPageControl alloc] init];
        pageControl.delegate = self;
        pageControl.JhSelectBlock = ^(JhPageControl * _Nonnull pageControl, NSInteger clickIndex) {
            NSLog(@"pageControl3 block clickIndex %zd ",clickIndex);
        };
        CGFloat pageControl_X = 0;
        CGFloat pageControl_Y = 300;
        pageControl.frame = CGRectMake(pageControl_X, pageControl_Y, Kwidth, 15);
        pageControl.Jh_numberOfPages = kMaxPage;
        pageControl.Jh_currentPage = 1;
        pageControl.Jh_otherColor = JhRandomColor;
        pageControl.Jh_currentColor = JhRandomColor;
        pageControl.Jh_alignmentStyle = JhAlignmentStyleRight; //设置对齐方式
        pageControl.Jh_controlSpacing = 3.0;  //间距
        pageControl.Jh_marginSpacing = 10;  //距离初始位置 间距  默认10
        pageControl.Jh_pageControlStyle = JhPageControlStyelRectangle;//长条样式
        _pageControl3 = pageControl;
        [self.view addSubview:self.pageControl3];
    }
    return _pageControl3;
}

@end
