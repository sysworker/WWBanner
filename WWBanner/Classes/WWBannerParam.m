//
//  WWBannerParam.m
//  WWBanner
//
//  Created by WW on 2019/9/6.
//  Copyright © 2019 WW. All rights reserved.
//

#import "WWBannerParam.h"

@implementation WWBannerParam

WWBannerPropSetFuncImplementation(WWBannerParam, CGRect,                        wFrame)
WWBannerPropSetFuncImplementation(WWBannerParam, NSArray*,                      wData)
WWBannerPropSetFuncImplementation(WWBannerParam, CGFloat,                       wScaleFactor)
WWBannerPropSetFuncImplementation(WWBannerParam, CGFloat,                       wCardOverMinAlpha)
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wCardOverAlphaOpen)
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wFadeOpen)
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wEffect)
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wVertical)
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wImageFill)
WWBannerPropSetFuncImplementation(WWBannerParam, UIViewContentMode,wContentMode)
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wScale)
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wRepeat)
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wAutoScroll)
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wHideBannerControl)
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wCanFingerSliding)
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wMarquee)
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wCardOverLap)
WWBannerPropSetFuncImplementation(WWBannerParam, CGSize,               wCardSize)
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wZindex)
WWBannerPropSetFuncImplementation(WWBannerParam, BOOL,                          wClickCenter)
WWBannerPropSetFuncImplementation(WWBannerParam, NSInteger,                     wCardOverLapCount)
WWBannerPropSetFuncImplementation(WWBannerParam, CGFloat,                       wActiveDistance)
WWBannerPropSetFuncImplementation(WWBannerParam, CGSize,                        wItemSize)
WWBannerPropSetFuncImplementation(WWBannerParam, int,                           wLineSpacing)
WWBannerPropSetFuncImplementation(WWBannerParam, CGFloat,                       wEffectHeight)
WWBannerPropSetFuncImplementation(WWBannerParam, CGFloat,                       wContentOffsetX)
WWBannerPropSetFuncImplementation(WWBannerParam, CGFloat,                       wScreenScale)
WWBannerPropSetFuncImplementation(WWBannerParam, BannerCellPosition,            wPosition)
WWBannerPropSetFuncImplementation(WWBannerParam, SpecialStyle,                  wSpecialStyle)
WWBannerPropSetFuncImplementation(WWBannerParam, NSString*,                     wPlaceholderImage)
WWBannerPropSetFuncImplementation(WWBannerParam, NSInteger,                     wSelectIndex)
WWBannerPropSetFuncImplementation(WWBannerParam, NSString*,                     wMyCellClassName)
WWBannerPropSetFuncImplementation(WWBannerParam, BannerCellCallBlock,           wMyCell)
WWBannerPropSetFuncImplementation(WWBannerParam, BannerClickBlock,              wEventClick)
WWBannerPropSetFuncImplementation(WWBannerParam, BannerScrollEndBlock,          wEventScrollEnd)
WWBannerPropSetFuncImplementation(WWBannerParam, BannerCenterClickBlock,        wEventCenterClick)
WWBannerPropSetFuncImplementation(WWBannerParam, BannerScrollBlock,             wEventDidScroll)
WWBannerPropSetFuncImplementation(WWBannerParam, UIColor*,                      wBannerControlColor)
WWBannerPropSetFuncImplementation(WWBannerParam, UIColor*,                      wBannerControlSelectColor)
WWBannerPropSetFuncImplementation(WWBannerParam, NSString*,                     wBannerControlImage)
WWBannerPropSetFuncImplementation(WWBannerParam, NSString*,                     wDataParamIconName)
WWBannerPropSetFuncImplementation(WWBannerParam, NSString*,                     wBannerControlSelectImage)
WWBannerPropSetFuncImplementation(WWBannerParam, CGSize,                        wBannerControlImageSize)
WWBannerPropSetFuncImplementation(WWBannerParam, CGSize,                        wBannerControlSelectImageSize)
WWBannerPropSetFuncImplementation(WWBannerParam, CGFloat,                       wAutoScrollSecond)
WWBannerPropSetFuncImplementation(WWBannerParam, CGFloat,                       wAlpha)
WWBannerPropSetFuncImplementation(WWBannerParam, CGFloat,                       wBannerControlImageRadius)
WWBannerPropSetFuncImplementation(WWBannerParam, UIEdgeInsets,                  wSectionInset)
WWBannerPropSetFuncImplementation(WWBannerParam, UIScrollViewDecelerationRate,  wDecelerationRate)
WWBannerPropSetFuncImplementation(WWBannerParam, BannerControlPosition,         wBannerControlPosition)
WWBannerPropSetFuncImplementation(WWBannerParam, CGFloat,wBannerControlBottomOff)
WWBannerPropSetFuncImplementation(WWBannerParam, UIColor*,                      wMarqueeTextColor)
WWBannerPropSetFuncImplementation(WWBannerParam, BannerPageControl,             wCustomControl)
WWBannerPropSetFuncImplementation(WWBannerParam, BannerSpecialLine,             wSpecialCustumLine)
WWBannerPropSetFuncImplementation(WWBannerParam, CGFloat,                       wBannerControlSelectMargin)
WWBannerPropSetFuncImplementation(WWBannerParam, CGFloat,                       wMarqueeRate)
WWBannerPropSetFuncImplementation(WWBannerParam, CGFloat,                       wCustomImageRadio)
WWBannerPropSetFuncImplementation(WWBannerParam, id,                            wMyCellClassNames)
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
