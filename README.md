# PNPopBottomMsg
PNPopBottomMsg--自定义底部label弹出信息

<br/>
导入#import "PNPopBottomMsg.h"
### 在需要弹出底部提示框的代码处，调用此类方法：<br/>
  /**
    点击屏幕弹框 文字白色  label是黑色
  */
  - (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
  {
      [PNPopBottomMsg popBottomViewWithMsg:@"这是底部弹窗弹出的文字" fontColor:[UIColor whiteColor] bgColor:[UIColor
      blackColor]];
  }

