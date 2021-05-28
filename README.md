# JhPageControl

JhPageControl - 多种样式pageControl(小圆点,长条,小圆点+长条),可自定义位置(左中右)和大小

![](https://raw.githubusercontent.com/iotjin/JhPageControl/master/JhPageControl/screenshots/1.gif)  <br> 

## Examples

* Demo1

```objc
@property (nonatomic, strong)  JhPageControl *pageControl;

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
        pageControl.Jh_alignmentStyle = JhControlAlignmentStyleLeft; //设置对齐方式
        pageControl.Jh_controlSpacing = 3.0;
        pageControl.Jh_marginSpacing = 10;  //距离初始位置 间距  默认10
        pageControl.Jh_controlSize = CGSizeMake(5, 5);//如果设置Jh_pageControlStyle,则失效
        _pageControl = pageControl;
        [self.view addSubview:self.pageControl];
    }
    return _pageControl;
}

    [self pageControl];
```
* Demo2

```objc
@property (nonatomic, strong)  JhPageControl *pageControl2;

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
        pageControl.Jh_alignmentStyle = JhControlAlignmentStyleCenter; //设置对齐方式
        pageControl.Jh_controlSpacing = 5.0; //间距
        pageControl.Jh_marginSpacing = 0;  //距离初始位置 间距  默认10
        pageControl.Jh_pageControlStyle = JhPageControlStyelDotAndRectangle; //圆点 + 长条 样式
//        pageControl.Jh_controlSize = CGSizeMake(15, 2);//如果设置Jh_pageControlStyle,则失效
        _pageControl2 = pageControl;
        [self.view addSubview:self.pageControl2];
    }
    return _pageControl2;
}

   [self pageControl2];
```
* Demo3

```objc
@property (nonatomic, strong)  JhPageControl *pageControl3;

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
        pageControl.Jh_alignmentStyle = JhControlAlignmentStyleRight; //设置对齐方式
        pageControl.Jh_controlSpacing = 3.0;  //间距
        pageControl.Jh_marginSpacing = 10;  //距离初始位置 间距  默认10
        pageControl.Jh_pageControlStyle = JhPageControlStyelRectangle;//长条样式
        _pageControl3 = pageControl;
        [self.view addSubview:self.pageControl3];
    }
    return _pageControl3;
}


  [self pageControl3];
```
* JhPageControlDelegate

```objc
#pragma mark - JhPageControlDelegate
- (void)JhPageControlClick:(JhPageControl*)pageControl index:(NSInteger)clickIndex {
    NSLog(@" clickIndex %zd ",clickIndex);
}
```
