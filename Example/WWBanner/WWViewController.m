//
//  WWViewController.m
//  WWBanner
//
//  Created by sysworker@163.com on 12/30/2021.
//  Copyright (c) 2021 sysworker@163.com. All rights reserved.
//

#import "WWViewController.h"
#import "WWBannerView.h"

@interface WWViewController ()
@property (weak, nonatomic) IBOutlet WWBannerView *WWBannerBottonView;

@end

@implementation WWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
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
        /**
         self.param =
              BannerParam()
             //自定义pageControl的位置
             .wCustomControlSet(^(UIControl *pageControl) {
                 
             })
             //自定义视图必传
             .wMyCellClassNameSet(@"MyCell")
             .wMyCellSet(^UICollectionViewCell *(NSIndexPath *indexPath, UICollectionView *collectionView, id model, UIImageView *bgImageView,NSArray*dataArr) {
                     //自定义视图
                 MyCell *cell = (MyCell *)[collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([MyCell class]) forIndexPath:indexPath];
                 [cell.icon sd_setImageWithURL:[NSURL URLWithString:model[@"icon"]] placeholderImage:nil];
                 return cell;
             })
             .wEventClickSet(^(id anyID, NSInteger index) {
                 NSLog(@"点击 %@ %ld",anyID,index);
             })
             .wEventCenterClickSet(^(id anyID, NSInteger index,BOOL isCenter,UICollectionViewCell *cell) {
                 NSLog(@"判断居中点击");
             })
             .wEventScrollEndSet( ^(id anyID, NSInteger index, BOOL isCenter,UICollectionViewCell *cell) {
                 //毛玻璃效果外部调整
                  BannerStrongSelf(weakObject)
                  [strongObject.viewOne.bgImgView sd_setImageWithURL:[NSURL URLWithString:anyID[@"icon"]] placeholderImage:nil];
             })
             //图片对应的key值
             .wDataParamIconNameSet(@"icon")
             .wFrameSet(CGRectMake(0, BannerHeight/3, BannerWitdh, BannerHeight/3))
             //图片铺满
             .wImageFillSet(YES)
             //item间距
             .wLineSpacingSet(10)
             //开启缩放
             .wScaleSet(YES)
             //毛玻璃效果
             .wEffectSet(YES)
             //毛玻璃背景的高度系数
             .wEffectHeightSet(1)
             //缩放垂直间距
             .wActiveDistanceSet(400)
             //缩放系数
             .wScaleFactorSet(0.5)
             //item的size
             .wItemSizeSet(CGSizeMake(BannerWitdh*0.5, BannerHeight/3))
             //滑动固定偏移距离 itemSize.width*倍数
             .wContentOffsetXSet(0.5)
             //默认滑动到第index个
             .wSelectIndexSet(2)
             //循环滚动
             .wRepeatSet(YES)
             //自动滚动时间
             .wAutoScrollSecondSet(3)
             //自动滚动
             .wAutoScrollSet(YES)
             //卡片叠加模式
             .wCardOverLapSet(NO)
             //cell的位置
             .wPositionSet(BannerCellPositionCenter)
             //分页按钮的选中的颜色
             .wBannerControlSelectColorSet([UIColor whiteColor])
             //分页按钮的未选中的颜色
             .wBannerControlColorSet([UIColor cyanColor])
             //分页按钮的未选中的图片
             .wBannerControlImageSet(@"slideCirclePoint")
             //分页按钮的选中的图片
             .wBannerControlSelectImageSet(@"slidePoint")
             //分页按钮的未选中图片的size
             .wBannerControlImageSizeSet(CGSizeMake(10, 10))
             //分页按钮选中的图片的size
             .wBannerControlSelectImageSizeSet(CGSizeMake(15, 10))
             //分页按钮的圆角
             .wBannerControlImageRadiusSet(5)
             //自定义圆点间距
             .wBannerControlSelectMarginSet(3)
             //隐藏分页按钮
             .wHideBannerControlSet(NO)
             //能否拖动
             .wCanFingerSlidingSet(YES)
             //整体缩小
             .wScreenScaleSet(1)
             //左右半透明 中间不透明
             .wAlphaSet(0.5)
             //开启跑马灯效果
             .wMarqueeSet(NO)
             //跑马灯速度
             .wMarqueeRateSet(5)
             //开启纵向
             .wVerticalSet(NO)
             //分页按钮的位置
             .wBannerControlPositionSet(BannerControlCenter)
             //左右偏移 让第一个和最后一个可以居中
             .wSectionInsetSet(UIEdgeInsetsMake(0,BannerWitdh*0.25, 0, BannerWitdh*0.25))
             //数据源
             .wDataSet([self getData])
             ;
         */
        
        ///xib布局
        self.WWBannerBottonView.param = param;
        [self.WWBannerBottonView layoutIfNeeded];
        [self.WWBannerBottonView setUp];
        [self.WWBannerBottonView updateUI];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
