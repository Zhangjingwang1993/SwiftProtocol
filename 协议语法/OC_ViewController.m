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
@property (nonatomic, copy) NSString *string;
@end

@implementation OC_ViewController
/**
 延时加载或者说延时初始化是很常用的优化方法，在构建和生成新的对象的时候，内存分配会在运行时耗费不少时间，如果有一些对象的属性和内容非常复杂的话，这个时间更是不可忽略。另外，有些情况下我们并不会立即用到一个对象的所有属性，而默认情况下初始化时，那些在特定环境下不被使用的存储属性，也一样要被初始化和赋值，也是一种浪费。
 
 在其他语言 (包括 Objective-C) 中延时加载的情况是很常见的。我们在第一次访问某个属性时，判断这个属性背后的存储是否已经存在，如果存在则直接返回，如果不存在则说明是首次访问，那么就进行初始化并存储后再返回。这样我们可以把这个属性的初始化时刻推迟，与包含它的对象的初始化时刻分开，以达到提升性能的目的。以 Objective-C 举个例子
 */
- (NSString *)string
{
    if (_string == nil) {
        _string = @"Hello";
    }
    return _string;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor cyanColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 50, 180, 80);
    [button setTitle:@"i am a button " forState:UIControlStateNormal];
    [button addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    float b = 1.234567;
    NSLog(@"float: %.2f", b); // 1.23
    
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
