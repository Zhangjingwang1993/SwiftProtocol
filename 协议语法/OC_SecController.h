//
//  OC_SecController.h
//  协议语法
//
//  Created by zjwang on 16/4/1.
//  Copyright © 2016年 Xsummerybc. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol sendValueDelegate <NSObject>
- (void)sendValueString:(NSString *)str;
@end
@interface OC_SecController : UIViewController
@property (nonatomic, assign) id<sendValueDelegate> delegate;

@end
