//
//  LXTwoController.m
//  LXNavBarController
//
//  Created by 李旭 on 16/9/12.
//  Copyright © 2016年 LX. All rights reserved.
//

#import "LXTwoController.h"

@implementation LXTwoController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blueColor];
    
    [self leftImageNormalStr:@"back" withHlightedStr:@"back_sel" withAction:@selector(back:)];
    [self rightTextNormalStr:@"按钮" withAction:@selector(btn)];
}

- (void)btn
{
    NSLog(@"点击了按钮");
}

@end
