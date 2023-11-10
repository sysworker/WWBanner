//
//  WWBannerParam.m
//  WWBanner
//
//  Created by WW on 2019/9/6.
//  Copyright © 2019 WW. All rights reserved.
//

#import "WWBannerParam.h"

@implementation WWBannerParam
///布局方式 frame  如需单独设置banner内容的大小
WWBannerPropSetFuncImplementation(WWBannerParam, CGRect,                        wFrame)
///数据源
WWBannerPropSetFuncImplementation(WWBannerParam, NSArray*,                      wData)
///缩放系数 数值越大缩放越大 default 0.5 卡片叠加效果时默认为0.8
WWBannerPropSetFuncImplementation(WWBannerParam, CGFloat,                       wScaleFactor)
///叠加模式透明度最小值 defalt 0.1
WWBannerPropSetFuncImplementation(WWBannerParam, CGFloat,                       wCardOverMinAlpha)
///卡片重叠模式开启偏移透明度变化 default NO
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wCardOverAlphaOpen)
///淡入淡出 default NO
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wFadeOpen)
///背景毛玻璃效果 default NO
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wEffect)
///纵向(cell全屏的时候有效) default NO
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wVertical)
///图片不变形铺满 默认 YES（建议直接用 wContentMode）
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wImageFill)
///图片类型
WWBannerPropSetFuncImplementation(WWBannerParam, UIViewContentMode,wContentMode)
///开启缩放 default NO
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wScale)
///开启无线滚动 default NO
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wRepeat)
///开启自动滚动 default NO
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wAutoScroll)
///隐藏pageControl default NO
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wHideBannerControl)
///是否允许手势滑动 default YES
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wCanFingerSliding)
///跑马灯(文字效果) default NO
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wMarquee)
///开启卡片重叠模式 default NO
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wCardOverLap)
///卡片大小
WWBannerPropSetFuncImplementation(WWBannerParam, CGSize,               wCardSize)
///中间视图放最上面 default NO
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wZindex)
///点击左右居中
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wClickCenter)
///卡片重叠显示个数 default 4
WWBannerPropSetFuncImplementation(WWBannerParam, NSInteger,                     wCardOverLapCount)
///垂直缩放 数值越大缩放越小 default 400
WWBannerPropSetFuncImplementation(WWBannerParam, CGFloat,                       wActiveDistance)
///item的size default 视图的宽高 item的width最小为父视图的一半 (为了保证同屏最多显示3个 减少不必要的bug)
WWBannerPropSetFuncImplementation(WWBannerParam, CGSize,                        wItemSize)
///item的之间的间距 default 0
WWBannerPropSetFuncImplementation(WWBannerParam, int,                           wLineSpacing)
///毛玻璃背景的高度 (视图的高度*倍数) default 1 范围0~1
WWBannerPropSetFuncImplementation(WWBannerParam, CGFloat,                       wEffectHeight)
///滑动的时候偏移的距离 以倍数计算 default 0.5 正中间
WWBannerPropSetFuncImplementation(WWBannerParam, CGFloat,                       wContentOffsetX)
///整体视图缩放系数 default 1
WWBannerPropSetFuncImplementation(WWBannerParam, CGFloat,                       wScreenScale)
///左右相邻item的中心点 default BannerCellPositionCenter
WWBannerPropSetFuncImplementation(WWBannerParam, BannerCellPosition,            wPosition)
///特殊样式 default 无
WWBannerPropSetFuncImplementation(WWBannerParam, SpecialStyle,                  wSpecialStyle)
///占位图片
WWBannerPropSetFuncImplementation(WWBannerParam, NSString*,                     wPlaceholderImage)
///默认移动到第几个 default 0
WWBannerPropSetFuncImplementation(WWBannerParam, NSInteger,                     wSelectIndex)
///自定义cell的类名 自定义视图必传 不然会crash
WWBannerPropSetFuncImplementation(WWBannerParam, NSString*,                     wMyCellClassName)
///自定义cell内容 默认是Collectioncell类
WWBannerPropSetFuncImplementation(WWBannerParam, BannerCellCallBlock,           wMyCell)

#pragma mark - 点击方法
///点击方法
WWBannerPropSetFuncImplementation(WWBannerParam, BannerClickBlock,              wEventClick)
///每次滚动结束都会调用 最好是关闭自动滚动的场景使用
WWBannerPropSetFuncImplementation(WWBannerParam, BannerScrollEndBlock,          wEventScrollEnd)
///点击方法 可获取居中cell
WWBannerPropSetFuncImplementation(WWBannerParam, BannerCenterClickBlock,        wEventCenterClick)
///正在滚动
WWBannerPropSetFuncImplementation(WWBannerParam, BannerScrollBlock,             wEventDidScroll)

#pragma mark - 圆点设置
///布局方式设置page位置
WWBannerPropSetFuncImplementation(WWBannerParam, CGRect,                        wPageControlFrame)
///PageControl的位置 default BannerControlCenter
WWBannerPropSetFuncImplementation(WWBannerParam, BannerControlPosition,         wBannerControlPosition)
///系统的圆点颜色  default  ffffff
WWBannerPropSetFuncImplementation(WWBannerParam, UIColor*,                      wBannerControlColor)
///系统的圆点选中颜色  default  orange
WWBannerPropSetFuncImplementation(WWBannerParam, UIColor*,                      wBannerControlSelectColor)
///自定义安全的圆点图标
WWBannerPropSetFuncImplementation(WWBannerParam, NSString*,                     wBannerControlImage)
///数据源的图片字段 默认 icon
WWBannerPropSetFuncImplementation(WWBannerParam, NSString*,                     wDataParamIconName)
///自定义安全的选中圆点图标
WWBannerPropSetFuncImplementation(WWBannerParam, NSString*,                     wBannerControlSelectImage)
///自定义安全的圆点图标的size  default (5,5)
WWBannerPropSetFuncImplementation(WWBannerParam, CGSize,                        wBannerControlImageSize)
///自定义安全的选中圆点图标的size (10,5)
WWBannerPropSetFuncImplementation(WWBannerParam, CGSize,                        wBannerControlSelectImageSize)
///自动滚动间隔时间 default 3.0f
WWBannerPropSetFuncImplementation(WWBannerParam, CGFloat,                       wAutoScrollSecond)
///左右的透明度 default 1
WWBannerPropSetFuncImplementation(WWBannerParam, CGFloat,                       wAlpha)
///自定义安全的圆点图片圆角 default ImageSize/2
WWBannerPropSetFuncImplementation(WWBannerParam, CGFloat,                       wBannerControlImageRadius)
///整体间距 默认UIEdgeInsetsMake(0,0, 0, 0)
WWBannerPropSetFuncImplementation(WWBannerParam, UIEdgeInsets,                  wSectionInset)
///滚动减速时间 default UIScrollViewDecelerationRateFast
WWBannerPropSetFuncImplementation(WWBannerParam, UIScrollViewDecelerationRate,  wDecelerationRate)
///分页控件距离轮播图的底部间距（在默认间距基础上）的偏移量
WWBannerPropSetFuncImplementation(WWBannerParam, CGFloat,wBannerControlBottomOff)
///跑马灯文字颜色  default  red
WWBannerPropSetFuncImplementation(WWBannerParam, UIColor*,                      wMarqueeTextColor)
///自定义pageControl
WWBannerPropSetFuncImplementation(WWBannerParam, BannerPageControl,             wCustomControl)
///特殊样式SpecialLine 自定义下划线
WWBannerPropSetFuncImplementation(WWBannerParam, BannerSpecialLine,             wSpecialCustumLine)
///自定义圆点的间距 default 3
WWBannerPropSetFuncImplementation(WWBannerParam, CGFloat,                       wBannerControlSelectMargin)
///跑马灯速度  default  0.5
WWBannerPropSetFuncImplementation(WWBannerParam, CGFloat,                       wMarqueeRate)
///自定义图片圆角 default 5
WWBannerPropSetFuncImplementation(WWBannerParam, CGFloat,                       wCustomImageRadio)
///自定义cell的类名 自定义视图必传 不然会crash 和上面的属性wMyCellClassName 二选一 此属性可以传数组
WWBannerPropSetFuncImplementation(WWBannerParam, id,                            wMyCellClassNames)
///自定义xib cell的类名 自定义视图必传 不然会crash
WWBannerPropSetFuncImplementation(WWBannerParam, id,                            wXibCellClassNames)
WWBannerParam * BannerParam(void){
    return  [WWBannerParam new];
}

- (instancetype)init{
    if (self = [super init]) {
        _wAlpha = 1;
        _wScaleFactor = 0.5f;
        _wLineSpacing = 0.0f;
        _wContentOffsetX = 0.5f;
        _wAutoScrollSecond = 3.0f;
        _wPosition = BannerCellPositionCenter;
        _wBannerControlBottomOff = 0;
        _wActiveDistance = 400.0f;
        _wScale = NO;
        _wRepeat = NO;
        _wSelectIndex = 0;
        _wImageFill = YES;
        _wContentMode = UIViewContentModeScaleAspectFill;
        _wBannerControlColor = [UIColor whiteColor];
        _wBannerControlSelectColor = [UIColor orangeColor];
        _wBannerControlImageSize = CGSizeMake(10, 10);
        _wBannerControlSelectImageSize = CGSizeMake(10, 10);
        _wCanFingerSliding = YES;
        _wSectionInset = UIEdgeInsetsMake(0,0, 0, 0);
        _wDecelerationRate = 0.1;
        _wScreenScale = 1;
        _wMarqueeTextColor = [UIColor redColor];
        _wEffectHeight = 1;
        _wDataParamIconName = @"bannerIcon";
        _wBannerControlSelectMargin = 3;
        _wMarqueeRate = 0.5;
        _wCardOverLapCount = 4;
        _wCardOverMinAlpha = 0.1;
        _wCustomImageRadio = 5.0f;
    }
    return self;
}

@end
