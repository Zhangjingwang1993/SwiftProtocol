//
//  OC_SecController.m
//  协议语法
//
//  Created by zjwang on 16/4/1.
//  Copyright © 2016年 Xsummerybc. All rights reserved.
//

#import "OC_SecController.h"

@interface OC_SecController ()

@end

@implementation OC_SecController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor lightGrayColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 50, 180, 80);
    [button setTitle:@"i am a button " forState:UIControlStateNormal];
    [button addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
- (void)click:(UIButton *)button
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(sendValueString:)]) {
        [self.delegate sendValueString:@"i am a String"];
    }
    [self dismissModalViewControllerAnimated:YES];
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
