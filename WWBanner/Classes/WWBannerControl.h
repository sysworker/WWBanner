//
//  WWBannerControl.h
//  WWBanner
//
//  Created by WW on 2019/9/6.
//  Copyright © 2019 WW. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WWBannerParam.h"
NS_ASSUME_NONNULL_BEGIN
@interface WWBannerControl : UIControl
@property (nonatomic, strong) UIImage *currentImage;
@property (nonatomic, strong) UIImage *inactiveImage;
@property (nonatomic, assign) CGSize currentImageSize;
@property (nonatomic, assign) CGSize inactiveImageSize;
@property (nonatomic, assign) NSInteger numberOfPages;
@property (nonatomic, assign) NSInteger currentPage;
@property (nonatomic,strong)  UIColor *currentPageIndicatorTintColor;
@property (nonatomic,strong)  UIColor *pageIndicatorTintColor;
@property (nonatomic, strong) WWBannerParam *param;
- (instancetype)initWithFrame:(CGRect)frame WithModel:(WWBannerParam *)param;

@end

NS_ASSUME_NONNULL_END
