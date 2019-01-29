//
//  UIView+YDPrompt.m
//  YDPromptView
//
//  Created by rowena on 2019/1/28.
//  Copyright © 2019年 wuyezhiguhun. All rights reserved.
//

#import "UIView+YDPrompt.h"
#import "YDPromptHUD.h"

@implementation UIView (YDPrompt)

/**
 * 移除提示
 * @pram animated 是否有动画，YES:有动画，NO:没有动画
 */
- (void)removePromptViewAnimated:(BOOL)animated {
    [YDPromptHUD hideHUDForView:self animated:animated];
}

/**
 * 添加文字提示类提示,默认停留时间2s
 * @pram text 提示文字
 */
- (void)addPromotViewText:(NSString *)text {
    YDPromptHUD *promptHUD = [YDPromptHUD showHUDAddedTo:self animated:YES];
    promptHUD.mode = YDPromptHUDModeText;
    promptHUD.label.text = text;
    [promptHUD hideAnimated:YES afterDelay:2.0];
}

/**
 * 添加文字提示类提示,带提示文字停留时间
 * @pram text 提示文字
 * @pram delay 提示文字停留时间
 */
- (void)addPromotViewText:(NSString *)text delay:(CGFloat)delay {
    YDPromptHUD *promptHUD = [YDPromptHUD showHUDAddedTo:self animated:YES];
    promptHUD.mode = YDPromptHUDModeText;
    promptHUD.label.text = text;
    [promptHUD hideAnimated:YES afterDelay:delay];
}

/** 添加提示动画 */
- (void)addPromotViewAnimation {
    [YDPromptHUD showHUDAddedTo:self animated:YES];
}

/**
 * 添加动画，带提示文字
 * @pram text 提示文字
 */
- (void)addPromotViewAnimationText:(NSString *)text {
    YDPromptHUD *promptHUD = [YDPromptHUD showHUDAddedTo:self animated:YES];
    promptHUD.label.text = text;
}


@end
