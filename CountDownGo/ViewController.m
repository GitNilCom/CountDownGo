//
//  ViewController.m
//  CountDownGo
//
//  Created by zhouzhongliang on 2020/5/17.
//  Copyright © 2020 zhouzhongliang. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *testButton = [[UIButton alloc] initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width - 150)/2, 300, 150, 50)];
    [testButton setTitle:@"开始" forState:UIControlStateNormal];
    [testButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    testButton.titleLabel.font = [UIFont systemFontOfSize:17];
    [testButton setBackgroundColor:[UIColor cyanColor]];
    testButton.layer.cornerRadius = 25;
    testButton.clipsToBounds = YES;
    [self.view addSubview:testButton];
    [testButton addTarget:self action:@selector(testButtonClick) forControlEvents:UIControlEventTouchUpInside];
}

- (void)testButtonClick{
    NSLog(@"开始");
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondVC animated:YES];
}

@end
