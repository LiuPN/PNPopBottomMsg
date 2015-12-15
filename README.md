# PNPopBottomMsg
PNPopBottomMsg--自定义底部label弹出信息

<br/>
### 1、导入头文件<br/>
```objc
#import "PNPopBottomMsg.h"
```
### 2、在需要弹出底部提示框的代码处，调用此类方法：<br/>
```objc
    /**
    点击后在屏幕中弹出信息 文字白色  label是黑色
    */
    [PNPopBottomMsg popBottomViewWithMsg:@"这是底部弹窗弹出的文字" fontColor:[UIColor whiteColor] bgColor:[UIColor blackColor]];
```
