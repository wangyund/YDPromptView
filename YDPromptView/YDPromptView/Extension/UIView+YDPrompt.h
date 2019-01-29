//
//  UIView+YDPrompt.h
//  YDPromptView
//
//  Created by rowena on 2019/1/28.
//  Copyright © 2019年 wuyezhiguhun. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (YDPrompt)

/**
 * 移除提示
 * @pram animated 是否有动画，YES:有动画，NO:没有动画
 */
- (void)removePromptViewAnimated:(BOOL)animated;

/**
 * 添加文字提示类提示,默认停留时间2s
 * @pram text 提示文字
 */
- (void)addPromotViewText:(NSString *)text;

/**
 * 添加文字提示类提示,带提示文字停留时间
 * @pram text 提示文字
 * @pram delay 提示文字停留时间
 */
- (void)addPromotViewText:(NSString *)text delay:(CGFloat)delay;

/** 添加提示动画 */
- (void)addPromotViewAnimation;

/**
 * 添加动画，带提示文字
 * @pram text 提示文字
 */
- (void)addPromotViewAnimationText:(NSString *)text;

@end

NS_ASSUME_NONNULL_END
