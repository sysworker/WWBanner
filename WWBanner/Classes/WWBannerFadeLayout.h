//
//  WWBannerFadeLayout.h
//  WWBanner
//
//  Created by WW on 2020/6/15.
//  Copyright © 2020 WW. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WWBannerParam.h"
NS_ASSUME_NONNULL_BEGIN

@interface WWBannerFadeLayout : UICollectionViewFlowLayout
@property(nonatomic,strong)WWBannerParam *param;
@property(nonatomic,assign)BOOL right;
- (instancetype)initConfigureWithModel:(WWBannerParam *)param;
@end

NS_ASSUME_NONNULL_END
