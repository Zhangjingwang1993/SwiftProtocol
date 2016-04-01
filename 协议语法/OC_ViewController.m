//
//  OC_ViewController.m
//  协议语法
//
//  Created by zjwang on 16/4/1.
//  Copyright © 2016年 Xsummerybc. All rights reserved.
//

#import "OC_ViewController.h"
#import "OC_SecController.h"
@interface OC_ViewController ()<sendValueDelegate>

@end

@implementation OC_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor cyanColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 50, 180, 80);
    [button setTitle:@"i am a button " forState:UIControlStateNormal];
    [button addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}
- (void)click:(UIButton *)button
{
    OC_SecController *sec = [[OC_SecController alloc] init];
    sec.delegate = self;
    [self presentViewController:sec animated:YES completion:^{
        
    }];
}
// 实现代理方法
- (void)sendValueString:(NSString *)str
{
    NSLog(@"string : %@", str);
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
