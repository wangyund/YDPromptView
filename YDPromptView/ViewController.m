//
//  ViewController.m
//  YDPromptView
//
//  Created by rowena on 2019/1/28.
//  Copyright © 2019年 wuyezhiguhun. All rights reserved.
//

#import "ViewController.h"
#import "YDPromptView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    
    [self.view addPromotViewAnimationText:@"登录中"];
//    [YDPromptHUD showHUDAddedTo:self.view animated:YES];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view removePromptViewAnimated:YES];
    
//    [self addPromptMessage:@"苟利国家生死以" block:^(UIAlertAction * _Nonnull action) {
//
//    }];
    
//    [self addPromptTitle:@"刘邦" message:@"\n为之奈何\n" rightButton:@"张良" block:^(UIAlertAction * _Nonnull action) {
//        NSLog(@"wuyezhiguhun: 张良：山人只有妙计");
//    }];
    
    [self addPromptTitle:@"楚汉争霸" message:@"\n刘邦：为之奈何 \n项羽：亚父多虑了 \n" leftButton:@"刘邦" rightButton:@"项羽" leftBlock:^(UIAlertAction * _Nonnull action) {
        NSLog(@"wuyezhiguhun: 张良：山人只有妙计");
    } rightBlock:^(UIAlertAction * _Nonnull action) {
        NSLog(@"wuyezhiguhun: 范增：竖子不足与谋!");
    }];
}


@end
