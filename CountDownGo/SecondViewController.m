//
//  SecondViewController.m
//  CountDownGo
//
//  Created by zhouzhongliang on 2020/5/17.
//  Copyright © 2020 zhouzhongliang. All rights reserved.
//

#import "SecondViewController.h"
#import "CECustomCountDownGo.h"

@interface SecondViewController ()<CECustomCountDownGoDelagete>

@property (nonatomic, strong) CECustomCountDownGo *downView;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[self keyWindow] addSubview:self.downView];
    [_downView addTimerForAnimationDownView];
    self.view.backgroundColor = [UIColor colorWithRed:0.51f green:0.82f blue:0.27f alpha:1.00f];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回"
                                                                             style:UIBarButtonItemStylePlain
                                                                            target:self
                                                                            action:@selector(back)];
}

- (UIWindow *)keyWindow
{
    UIWindow *foundWindow = nil;
    NSArray *windows = [[UIApplication sharedApplication]windows];
    for (UIWindow *window in windows) {
        if (window.isKeyWindow) {
            foundWindow = window;
            break;
        }
    }
    return foundWindow;
}

- (void)customCountDown:(CECustomCountDownGo *)downView
{
    NSLog(@"执行完成");
}

- (void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (CECustomCountDownGo *)downView
{
    if (!_downView) {
        _downView =  [CECustomCountDownGo downView];
        _downView.delegate = self;
        _downView.frame = [UIScreen mainScreen].bounds;
        _downView.backgroundColor = [UIColor colorWithRed:0.11f green:0.61f blue:0.81f alpha:1.00f];
    }
    return _downView;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
