//
//  NextViewController.h
//  HelloBlock
//
//  Created by 买买提 on 15/11/24.
//  Copyright © 2015年 Intelligence community service (Beijing) Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NextViewController : UIViewController

@property (nonatomic, copy) void (^backBlock) (id arr);

@end
