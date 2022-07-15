//
//  WWBannerFlowLayout.h
//  WWBanner
//
//  Created by WW on 2019/9/6.
//  Copyright © 2019 WW. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WWBannerParam.h"
NS_ASSUME_NONNULL_BEGIN

@interface WWBannerFlowLayout : UICollectionViewFlowLayout
@property(nonatomic,strong)WWBannerParam *param;
- (instancetype)initConfigureWithModel:(WWBannerParam *)param;
@end

NS_ASSUME_NONNULL_END
