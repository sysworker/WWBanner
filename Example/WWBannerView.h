//
//  WWBannerView.h
//  WWBanner
//
//  Created by WW on 2019/9/6.
//  Copyright © 2019 WW. All rights reserved.
//

#import "WWBannerParam.h"
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface WWBannerView : UIView
//背景图
@property(strong,nonatomic)UIImageView *bgImgView;

/**
 *  调用方法
 *
 */
- (instancetype)initConfigureWithModel:(WWBannerParam *)param withView:(UIView*)parentView;

/**
 *  调用方法
 *
 */
- (instancetype)initConfigureWithModel:(WWBannerParam *)param;

@property(strong,nonatomic)WWBannerParam *param;
/**
 *  更新UI
 *
 */
- (void)updateUI;


/**
*  手动调用滚动
*
*/
- (void)scrolToPath:(NSIndexPath*)path animated:(BOOL)animated;

@end

@interface Collectioncell : UICollectionViewCell
@property(nonatomic,strong)UIImageView *icon;
@property(nonatomic,strong)WWBannerParam *param;
@end

@interface CollectionTextCell : UICollectionViewCell
@property(nonatomic,strong)UILabel *label;
@property(nonatomic,strong)WWBannerParam *param;
@end

NS_ASSUME_NONNULL_END
