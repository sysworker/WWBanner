
## Example
![效果图](https://github.com/sysworker/WWBanner/blob/main/WWBanner/Assets/eg1png.png))
```ruby

    NSMutableArray * img = [NSMutableArray arrayWithObjects:@"11",@"22",@"33",@"44",@"55", nil];
    WWBannerParam * param = BannerParam()
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
    ///设置间距
        .wLineSpacingSet(8)
    ///数据源
        .wDataSet(img);

    {//初始化方法一
        param.wFrameSet(CGRectMake((BannerWitdh-120)/2, 80, 120, 120));
        
        WWBannerParam * param = BannerParam().wFrameSet(CGRectMake((BannerWitdh-230)/2, 40, 230, 230)).wHideBannerControlSet(YES).wScaleSet(YES).wRepeatSet(YES).wAutoScrollSet(YES).wContentModeSet(UIViewContentModeScaleToFill).wCustomImageRadioSet(50).wDataSet(img).wItemSizeSet(CGSizeMake(100, 100)).wScaleFactorSet(1).wLineSpacingSet(-30).wCanFingerSlidingSet(YES).wZindexSet(YES).wAutoScrollSecondSet(1.5).wDataParamIconNameSet(@"bannerIcon");
        WWBannerView *bannerView = [[WWBannerView alloc] initConfigureWithModel:param withView:self.view];
        
    }
    //初始化方法二
    {
        UIView * v = [[UIView alloc] initWithFrame:CGRectMake(20, 220, 300, 120)];
        [self.view addSubview:v];
        param.wFrameSet(CGRectMake(0, 0, 300, 120));
        WWBannerView *bannerView2 = [[WWBannerView alloc] initConfigureWithModel:param];
        [v addSubview:bannerView2];
    }
    WWBannerParam * param2 = BannerParam().wFrameSet(CGRectMake(0, 420, BannerWitdh, 120)).wRepeatSet(YES).wAutoScrollSet(YES)
    //item之间的间距
    .wLineSpacingSet(15)
    //开启缩放效果
    .wScaleSet(YES)
    //缩放垂直系数
    .wActiveDistanceSet(400)
    //缩放系数
    .wScaleFactorSet(0.5)
    //item的size
    .wItemSizeSet(CGSizeMake(BannerWitdh*0.8, BannerHeight/5))
    //固定移动的距离 size*倍数
    .wContentOffsetXSet(0.5)
    //默认选中
    .wSelectIndexSet(2)
    .wRepeatSet(YES)
    .wAutoScrollSecondSet(3)
    .wAutoScrollSet(YES)
    //item中心位置
    .wPositionSet(BannerCellPositionCenter)
    //整体左右偏移 item.width的一半 让第一个和最后一个可以居中
    .wSectionInsetSet(UIEdgeInsetsMake(0,BannerWitdh*0.4, 0, BannerWitdh*0.4))
    .wDataSet(img);
    WWBannerView *bannerView3 = [[WWBannerView alloc] initConfigureWithModel:param2];
    [self.view addSubview:bannerView3];
        
    {
        ///xib布局,不需初始化，直接设置配置文件
        self.bannerView.param = param;
        //更新xib布局试图大小
        [self.bannerView layoutIfNeeded];
        //初始化banner内容
        [self.WWBannerBottonView setUp];
        ///更新布局
        [self.WWBannerBottonView updateUI];
    }

    数据变动时候执行[self.bannerView updateUI]，进行刷新
```

## Requirements
  依赖SDWebImage 

## Installation

WWBanner is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'WWBanner'
```  
run `pod install`
## Author

sysworker@163.com

## License
需要一起共同完善这个轮子，需要授权联系邮件

WWBanner is available under the MIT license. See the LICENSE file for more info.

