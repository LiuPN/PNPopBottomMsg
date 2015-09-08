//
//  BQTools.m
//  BQJR-2015
//
//  Created by lpn on 15/7/22.
//  Copyright (c) 2015年 BQJR2014. All rights reserved.
//

#import "PNPopBottomMsg.h"
#define bottomMargin 30
#define margin 20
#define bottomViewMargin 10


@implementation PNPopBottomMsg


/// 底部的弹框效果
+ (void)popBottomViewWithMsg:(NSString *)msg fontColor:(UIColor *)fontColor inSuperView:(UIView *)superView superViewBgColor:(UIColor *)bgColor
{
    // x中心坐标设置相对于父控件居中显示
   CGFloat centerX = superView.frame.size.width * 0.5;
    
    // 算出字的大小
   CGFloat maxWidth = superView.frame.size.width - (2 * margin);
   CGSize size =  [self sizeWithText:msg font:[UIFont systemFontOfSize:14.0] maxSize:CGSizeMake(maxWidth, MAXFLOAT)];
    
    
    CGFloat bottomH = size.height + bottomViewMargin;
    CGFloat bottomW = size.width + bottomViewMargin;
    UILabel *bottomView = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, bottomW, bottomH)];
    
    // 修改中心位置x
    CGPoint bottomCenter = bottomView.center;
    bottomCenter.x = centerX;
    bottomView.center = bottomCenter;
    
    // 设置底部到父控件之间的间距y
    CGRect bottomFrame = bottomView.frame;
    bottomFrame.origin.y = superView.frame.size.height - bottomMargin - bottomView.frame.size.height;
    bottomView.frame = bottomFrame;
    
    
    // 设置属性   超出的不显示
    bottomView.numberOfLines = 0;
    bottomView.layer.cornerRadius = 6.0;
    bottomView.layer.masksToBounds = YES;
    bottomView.text = msg;
    bottomView.textAlignment = NSTextAlignmentCenter;
    bottomView.alpha = 0.0;
    bottomView.font = [UIFont systemFontOfSize:14];
    bottomView.textColor = fontColor;
    bottomView.backgroundColor = bgColor;
    superView.clipsToBounds = YES;
    [superView addSubview:bottomView];
    
    // 动画效果
    [UIView animateKeyframesWithDuration:2.0 delay:0.0 options:UIViewKeyframeAnimationOptionCalculationModeLinear animations:^{
        bottomView.alpha = 1.0;
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:1.0 animations:^{
            bottomView.alpha = 0.0;
        } completion:^(BOOL finished) {
            [bottomView removeFromSuperview];
        }];
    }];
}


/// 根据给定的字符串、字体等, 计算这些字符串实际的大小
+ (CGSize)sizeWithText:(NSString *)text font:(UIFont *)font maxSize:(CGSize)maxSize
{
    // 设置一个给定的字体
    NSDictionary *attrs = @{NSFontAttributeName : font};
    
    // 计算text的Size
    return [text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}
@end
