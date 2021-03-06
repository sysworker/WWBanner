//
//  WWBannerConfig.h
//  WWBanner
//
//  Created by wmz on 2019/9/6.
//  Copyright © 2019 wmz. All rights reserved.
//



#ifndef WWBannerConfig_h
#define WWBannerConfig_h

#if __has_include(<SDWebImage/UIImageView+WebCache.h>)
#import <SDWebImage/UIImageView+WebCache.h>
#else
#import "UIImageView+WebCache.h"
#endif

#define BANNERCOUNT 500

#define BannerWitdh  [UIScreen mainScreen].bounds.size.width
#define BannerHeight [UIScreen mainScreen].bounds.size.height

#define BannerWeakSelf(obj) __weak typeof(obj) weakObject = obj;
#define BannerStrongSelf(obj) __strong typeof(obj) strongObject = weakObject;

#define BannerColor(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

///一个宏，第一个参数为类型，第二个为类对象，第三个为变量类型，第四个为变量名称
///然后定义变量
///新增set方法
#define WWBannerPropStatementAndPropSetFuncStatement(propertyModifier,className, propertyPointerType, propertyName)           \
@property(nonatomic,propertyModifier)propertyPointerType  propertyName;                                                 \
- (className * (^) (propertyPointerType propertyName))propertyName##Set;

///这是一个宏定义，第一个参数为返回的类型，第二个为变量类型，第三个为变量名称
///新增set方法
#define WWBannerPropSetFuncImplementation(className, propertyPointerType, propertyName)                                       \
- (className * (^) (propertyPointerType propertyName))propertyName##Set{                                                \
return ^(propertyPointerType propertyName) {                                                                            \
self->_##propertyName = propertyName;                                                                                         \
return self;                                                                                                            \
};                                                                                                                      \
}


/*
 * cell的block
 */
typedef UICollectionViewCell* (^BannerCellCallBlock)(NSIndexPath *indexPath,UICollectionView* collectionView,id model,UIImageView* bgImageView,NSArray*dataArr);

/*
 * 点击
 */
typedef void (^BannerClickBlock)(id anyID,NSInteger index);

/*
 * 自定义pageControl
 */
typedef void (^BannerPageControl)(UIControl* pageControl);

/*
 * 点击 ,可获取居中cell
 */
typedef void (^BannerCenterClickBlock)(id anyID,NSInteger index,BOOL isCenter,UICollectionViewCell* cell);

/*
 * 滚动结束
 */
typedef void (^BannerScrollEndBlock)(id anyID,NSInteger index,BOOL isCenter,UICollectionViewCell* cell);

/*
* 滚动
*/
typedef void (^BannerScrollBlock)(CGPoint point);

/*
 * 自定义下划线
 */
typedef void (^BannerSpecialLine)(UIView *line);

/*
 *cell动画的位置
 */
typedef enum :NSInteger{
    BannerCellPositionCenter      = 0,             //居中 默认
    BannerCellPositionBottom      = 1,             //置底
    BannerCellPositionTop         = 2,             //顶部
}BannerCellPosition;


/*
 *特殊样式
 */
typedef enum :NSInteger{
    SpecialStyleLine      = 1,             //下划线
    SpecialStyleFirstScale      = 2,       //首个变大效果
}SpecialStyle;

/*
 *pageControl的位置
 */
typedef enum :NSInteger{
    BannerControlCenter      = 0,             //居中 默认
    BannerControlLeft        = 1,             //左下
    BannerControlRight       = 2,             //右下
    BannerControlBotton      = 3,             //下（自己写）
}BannerControlPosition;



#endif /* WWBannerConfig_h */
