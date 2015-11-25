//
//  NextViewController.h
//  HelloBlock
//
//  Created by 买买提 on 15/11/24.
//  Copyright © 2015年 Intelligence community service (Beijing) Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, AFNetworkReachabilityStatus) {
    AFNetworkReachabilityStatusUnknown          = -1,
    AFNetworkReachabilityStatusNotReachable     = 0,
    AFNetworkReachabilityStatusReachableViaWWAN = 1,
    AFNetworkReachabilityStatusReachableViaWiFi = 2,
};

typedef NS_ENUM(NSInteger,ModelType) {

    AA = 0,
    BB = 1,
};

@interface NextViewController : UIViewController
- (void)logBlock:(void(^)(id paramga))myblock;
@property (nonatomic, copy) void (^backBlock) (id arr);

@end
