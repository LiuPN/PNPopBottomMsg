//
//  BQTools.h
//  BQJR-2015
//
//  Created by lpn on 15/7/22.
//  Copyright (c) 2015年 BQJR2014. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PNPopBottomMsg : NSObject
/*
 底部弹出label
 
 参数解释：
    msg: 弹出的文字
    centerPoint: 底部弹出label相对于superView（父控件）的中心坐标
    fontColor: 弹出文字的颜色
    superView: 弹出label的父控件
    bottomViewWidth: 弹出label的宽度  如果字的宽度大于bottomViewWidth  多行显示
                     否则，以最短的来显示
   
 
 */

+ (void)popBottomViewWithMsg:(NSString *)msg fontColor:(UIColor *)fontColor inSuperView:(UIView *)superView superViewBgColor:(UIColor *)bgColor;
@end
