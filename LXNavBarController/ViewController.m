//
//  ViewController.m
//  LXNavBarController
//
//  Created by 李旭 on 16/9/12.
//  Copyright © 2016年 LX. All rights reserved.
//

#import "ViewController.h"
#import "LXTwoController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.titleStr = @"自定义NavBar";
    [self leftTextNormalStr:@"右边按钮"  withHlightedStr:@"点击中" withAction:@selector(btn)];
    [self rightTextNormalStr:@"按钮" withAction:@selector(btn)];

    UIButton *pushBtn = [[UIButton alloc] initWithFrame:CGRectMake(80, 150, 74, 44)];
    pushBtn.backgroundColor = [UIColor redColor];
    [pushBtn setTitle:@"push" forState:UIControlStateNormal];
    [pushBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [pushBtn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushBtn];
}

- (void)btn
{
    NSLog(@"点击了按钮");
}

- (void)push
{
    [self.navigationController pushViewController:[[LXTwoController alloc] init] animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
