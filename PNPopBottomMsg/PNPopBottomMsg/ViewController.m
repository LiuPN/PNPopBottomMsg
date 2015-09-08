//
//  ViewController.m
//  PNPopBottomMsg
//
//  Created by lpn on 15/9/8.
//  Copyright (c) 2015年 lpn. All rights reserved.
//

#import "ViewController.h"
#import "PNPopBottomMsg.h"

@interface ViewController ()
@property(nonatomic, strong) UIView *bottomView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 添加一个view
    UIView *bottomView = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 200)];
    bottomView.backgroundColor = [UIColor lightGrayColor];
    self.bottomView = bottomView;
    [self.view addSubview:bottomView];
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    
    [PNPopBottomMsg popBottomViewWithMsg:@"这是底部弹窗弹出的文字" fontColor:[UIColor whiteColor] inSuperView:self.view bgColor:[UIColor blackColor]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
