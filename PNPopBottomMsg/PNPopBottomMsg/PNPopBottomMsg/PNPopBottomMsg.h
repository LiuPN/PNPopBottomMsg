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
    fontColor: 弹出文字的颜色
    bgColor: label的背景色
   
 
 */
+ (void)popBottomViewWithMsg:(NSString *)msg fontColor:(UIColor *)fontColor bgColor:(UIColor *)bgColor;
@end
