//
//  UIViewController+YDPrompt.h
//  YDPromptView
//
//  Created by rowena on 2019/1/28.
//  Copyright © 2019年 wuyezhiguhun. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (YDPrompt)


/**
 * 文字提示弹框，无标题，带有默认的“确定”按钮,点击缺按钮无回调
 * @pram message 提示文字
 */
- (void)addPromptMessage:(NSString *)message;
/**
 * 文字提示弹框，无标题，带有默认的“确认”按钮,点击缺按钮有回调
 * @pram message 提示文字
 * @pram block 点击“确定”按钮回调
 */
- (void)addPromptMessage:(NSString *)message block:(void (^ __nullable)(UIAlertAction *action))block;

/**
 * 文字提示弹框
 * @pram title 提示标题
 * @pram message 提示文字
 * @pram rightName 提示按钮名字
 * block 点击“确定”按钮回调
 */
- (void)addPromptTitle:(NSString *)title
               message:(NSString *)message
           rightButton:(NSString *)rightName
                 block:(void (^ __nullable)(UIAlertAction *action))block;

/**
 * 文字提示弹框
 * @pram title 提示标题
 * @pram message 提示文字
 * @pram rightName 提示按钮名字
 * block 点击“确定”按钮回调
 */
- (void)addPromptTitle:(NSString *)title
               message:(NSString *)message
            leftButton:(NSString *)leftName
           rightButton:(NSString *)rightName
             leftBlock:(void (^ __nullable)(UIAlertAction *action))leftBlock
            rightBlock:(void (^ __nullable)(UIAlertAction *action))rightBlock;


@end

NS_ASSUME_NONNULL_END
