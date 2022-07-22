//
//  WWBannerParam.h
//  WWBanner
//
//  Created by WW on 2019/9/6.
//  Copyright © 2019 WW. All rights reserved.
//

#import "WWBannerConfig.h"
NS_ASSUME_NONNULL_BEGIN

@interface WWBannerParam : NSObject
/* =========================================Attributes==========================================*/

//布局方式 frame  如需单独设置banner内容的大小
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, CGRect,               wFrame)
//数据源 必传
WWBannerPropStatementAndPropSetFuncStatement(strong, WWBannerParam, NSArray*,             wData)
//特殊样式 default 无
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, SpecialStyle,                 wSpecialStyle)

//淡入淡出 default NO
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, BOOL,                 wFadeOpen)
//开启缩放 default NO
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, BOOL,                 wScale)
//开启卡片重叠模式 default NO
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, BOOL,                 wCardOverLap)
///卡片大小
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, CGSize,               wCardSize)
//卡片重叠模式开启偏移透明度变化 default NO
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, BOOL,                 wCardOverAlphaOpen)
//叠加模式透明度最小值 defalt 0.1
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, CGFloat,              wCardOverMinAlpha)
//卡片重叠显示个数 default 4
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, NSInteger,            wCardOverLapCount)
//背景毛玻璃效果 default NO
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, BOOL,                 wEffect)
//隐藏pageControl default NO
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, BOOL,                 wHideBannerControl)
//是否允许手势滑动 default YES
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, BOOL,                 wCanFingerSliding)
//图片不变形铺满 默认 YES
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, BOOL,                 wImageFill)
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, UIViewContentMode,                 wContentMode)

//开启无线滚动 default NO
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, BOOL,                 wRepeat)
//开启自动滚动 default NO
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, BOOL,                 wAutoScroll)
//纵向(cell全屏的时候有效) default NO
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, BOOL,                 wVertical)
//跑马灯(文字效果) default NO
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, BOOL,                 wMarquee)
//点击左右居中
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, BOOL,                 wClickCenter)
//中间视图放最上面 default NO
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, BOOL,                 wZindex)
//整体间距 默认UIEdgeInsetsMake(0,0, 0, 0)
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, UIEdgeInsets,         wSectionInset)
//自定义图片圆角 default 5
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, CGFloat,              wCustomImageRadio)
//整体视图缩放系数 default 1
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, CGFloat,              wScreenScale)
//毛玻璃背景的高度 (视图的高度*倍数) default 1 范围0~1
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, CGFloat,              wEffectHeight)
//缩放系数 数值越大缩放越大 default 0.5 卡片叠加效果时默认为0.8
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, CGFloat,              wScaleFactor)
//左右的透明度 default 1
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, CGFloat,              wAlpha)
//垂直缩放 数值越大缩放越小 default 400
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, CGFloat,              wActiveDistance)
//item的size default 视图的宽高 item的width最小为父视图的一半 (为了保证同屏最多显示3个 减少不必要的bug)
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, CGSize,               wItemSize)
//item的之间的间距 default 0
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, int,                  wLineSpacing)
//滑动的时候偏移的距离 以倍数计算 default 0.5 正中间
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, CGFloat,              wContentOffsetX)
//左右相邻item的中心点 default BannerCellPositionCenter
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, BannerCellPosition,   wPosition)
//占位图片 默认 -
WWBannerPropStatementAndPropSetFuncStatement(copy,   WWBannerParam, NSString*,            wPlaceholderImage)
//数据源的图片字段 默认 icon
WWBannerPropStatementAndPropSetFuncStatement(copy,   WWBannerParam, NSString*,            wDataParamIconName)
//滚动减速时间 default UIScrollViewDecelerationRateFast
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, UIScrollViewDecelerationRate,wDecelerationRate)
//自动滚动间隔时间 default 3.0f
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, CGFloat,              wAutoScrollSecond)
//默认移动到第几个 default 0
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, NSInteger,            wSelectIndex)
//自定义cell内容 默认是Collectioncell类
WWBannerPropStatementAndPropSetFuncStatement(copy,   WWBannerParam, BannerCellCallBlock,  wMyCell)
//特殊样式SpecialLine 自定义下划线
WWBannerPropStatementAndPropSetFuncStatement(copy,   WWBannerParam, BannerSpecialLine,                  wSpecialCustumLine)
//自定义cell的类名 自定义视图必传 不然会crash
WWBannerPropStatementAndPropSetFuncStatement(copy,   WWBannerParam, NSString*,            wMyCellClassName)
//自定义cell的类名 自定义视图必传 不然会crash 和上面的属性wMyCellClassName 二选一 此属性可以传数组
WWBannerPropStatementAndPropSetFuncStatement(strong, WWBannerParam, id,                   wMyCellClassNames)
//自定义xib cell的类名 自定义视图必传 不然会crash
WWBannerPropStatementAndPropSetFuncStatement(strong, WWBannerParam, id,                   wXibCellClassNames)
//系统的圆点颜色  default  ffffff
WWBannerPropStatementAndPropSetFuncStatement(strong, WWBannerParam, UIColor*,             wBannerControlColor)
//系统的圆点选中颜色  default  orange
WWBannerPropStatementAndPropSetFuncStatement(strong, WWBannerParam, UIColor*,             wBannerControlSelectColor)
//自定义安全的圆点图标  default -
WWBannerPropStatementAndPropSetFuncStatement(copy,   WWBannerParam, NSString*,            wBannerControlImage)
//自定义安全的选中圆点图标  default -
WWBannerPropStatementAndPropSetFuncStatement(copy,   WWBannerParam, NSString*,            wBannerControlSelectImage)
//自定义安全的圆点图片圆角 default ImageSize/2
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, CGFloat,              wBannerControlImageRadius)
//自定义安全的圆点图标的size  default (5,5)
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, CGSize,               wBannerControlImageSize)
//自定义安全的选中圆点图标的size (10,5)
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, CGSize,               wBannerControlSelectImageSize)
//自定义圆点的间距 default 3
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, CGFloat,              wBannerControlSelectMargin)
//自定义pageControl
WWBannerPropStatementAndPropSetFuncStatement(copy,   WWBannerParam, BannerPageControl,             wCustomControl)
//pageControl的位置 default BannerControlCenter
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, BannerControlPosition,wBannerControlPosition)
/// 分页控件距离轮播图的底部间距（在默认间距基础上）的偏移量
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, CGFloat,wBannerControlBottomOff)
//跑马灯文字颜色  default  red
WWBannerPropStatementAndPropSetFuncStatement(strong, WWBannerParam, UIColor*,             wMarqueeTextColor)
//跑马灯速度  default  0.5
WWBannerPropStatementAndPropSetFuncStatement(assign, WWBannerParam, CGFloat,              wMarqueeRate)

/* =========================================Attributes==========================================*/

/* =========================================Events==============================================*/
WWBannerParam * BannerParam(void);
//点击方法
WWBannerPropStatementAndPropSetFuncStatement(copy,   WWBannerParam, BannerClickBlock,     wEventClick)
//点击方法 可获取居中cell
WWBannerPropStatementAndPropSetFuncStatement(copy,   WWBannerParam, BannerCenterClickBlock,wEventCenterClick)
//每次滚动结束都会调用 最好是关闭自动滚动的场景使用
WWBannerPropStatementAndPropSetFuncStatement(copy,   WWBannerParam, BannerScrollEndBlock, wEventScrollEnd)
//正在滚动
WWBannerPropStatementAndPropSetFuncStatement(copy,   WWBannerParam, BannerScrollBlock,    wEventDidScroll)
/* =========================================Events==============================================*/

/* =========================================custom==============================================*/
@property(nonatomic,assign)NSInteger myCurrentPath;

@property(nonatomic,assign)NSInteger overFactPath;
/* =========================================custom==============================================*/

@end

NS_ASSUME_NONNULL_END
