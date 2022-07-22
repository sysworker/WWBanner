
## Example
    ### 使用详情
    
    ![效果图](https://github.com/sysworker/WWBanner/blob/main/WWBanner/Assets/eg1png.png)


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
        
    {//初始化方法
        WWBannerView *bannerView = [[WWBannerView alloc] initConfigureWithModel:param withView:self.view];
    }

    数据变动时候执行[self.bannerView updateUI]，进行刷新
  
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

