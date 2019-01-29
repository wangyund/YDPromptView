//
//  UIViewController+YDPrompt.m
//  YDPromptView
//
//  Created by rowena on 2019/1/28.
//  Copyright © 2019年 wuyezhiguhun. All rights reserved.
//

#import "UIViewController+YDPrompt.h"

@implementation UIViewController (YDPrompt)

/**
 * 文字提示弹框，无标题，带有默认的“确定”按钮,点击缺按钮无回调
 * @pram message 提示文字
 */
- (void)addPromptMessage:(NSString *)message {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAlertAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:okAlertAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
}
/**
 * 文字提示弹框，无标题，带有默认的“确认”按钮,点击缺按钮有回调
 * @pram message 提示文字
 * @pram block 点击“确定”按钮回调
 */
- (void)addPromptMessage:(NSString *)message block:(void (^ __nullable)(UIAlertAction *action))block {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAlertAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (block) {
            block(action);
        }
    }];
    [alertController addAction:okAlertAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

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
                 block:(void (^ __nullable)(UIAlertAction *action))block {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAlertAction = [UIAlertAction actionWithTitle:rightName style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (block) {
            block(action);
        }
    }];
    [alertController addAction:okAlertAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

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
            rightBlock:(void (^ __nullable)(UIAlertAction *action))rightBlock {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *leftAlertAction = [UIAlertAction actionWithTitle:leftName style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (leftBlock) {
            leftBlock(action);
        }
    }];
    UIAlertAction *rightAlertAction = [UIAlertAction actionWithTitle:rightName style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (rightBlock) {
            rightBlock(action);
        }
    }];
    
    [alertController addAction:leftAlertAction];
    [alertController addAction:rightAlertAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

@end
