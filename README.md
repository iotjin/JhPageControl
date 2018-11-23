# JhPageControl
JhPageControl - 多种样式pageControl(小圆点,长条,小圆点+长条),可自定义位置(左中右)和大小

![](https://raw.githubusercontent.com/iotjin/JhPageControl/master/JhPageControl/screenshots/1.gif)  <br> 

## Examples

* Demo1

```
@property (nonatomic, strong)  JhPageControl *pageControl;

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

    [self pageControl];
  


```
* Demo2

```
@property (nonatomic, strong)  JhPageControl *pageControl2;


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

   [self pageControl2];
  

```
* Demo3

```
@property (nonatomic, strong)  JhPageControl *pageControl3;

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


  [self pageControl3];
  
  

```
