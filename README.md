# 使用详情
####加载本地图片
    NSMutableArray * img = [NSMutableArray arrayWithObjects:@"11",@"22",@"33",@"44",@"55", nil];
    WWBannerParam * param = BannerParam().wFrameSet(CGRectMake(0, 80, 300, 120))
    ///开启循环滚动
        .wRepeatSet(YES)
    //开启自动滚动
        .wAutoScrollSet(YES)
    ///自动滚动时间
        .wAutoScrollSecondSet(2)
    ///模式
        .wContentModeSet(UIViewContentModeScaleToFill)
    ///自定义图片圆角
        .wCustomImageRadioSet(15)
    ///隐藏pageControl
        .wHideBannerControlSet(YES)
    ///数据源
        .wDataSet(img);
        
        
    {//初始化方法一
        WWBannerView *bannerView = [[WWBannerView alloc] initConfigureWithModel:param withView:self.view];
    }
    //初始化方法二
    {
        UIView * v = [[UIView alloc] initWithFrame:CGRectMake(20, 150, 300, 120)];
        [self.view addSubview:v];
        WWBannerView *bannerView2 = [[WWBannerView alloc] initConfigureWithModel:param];
        [v addSubview:bannerView2];
    }

数据变动时候执行 resetCollection，进行刷新

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

WWBanner is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'WWBanner'
```

## Author

sysworker@163.com

## License
需要一起共同完善这个app需要的授权文件

WWBanner is available under the MIT license. See the LICENSE file for more info.

