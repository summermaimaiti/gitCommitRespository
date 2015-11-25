//
//  NextViewController.m
//  HelloBlock
//
//  Created by 买买提 on 15/11/24.
//  Copyright © 2015年 Intelligence community service (Beijing) Co., Ltd. All rights reserved.
//

#import "NextViewController.h"
#import "ViewController.h"
@interface NextViewController ()
{
    ViewController *vc;
}
@end

@implementation NextViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *submitBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    submitBtn.frame = CGRectMake(20, 200, 200, 40);
    submitBtn.backgroundColor = [UIColor greenColor];
    [submitBtn setTitle:@"提交" forState:UIControlStateNormal];
    [submitBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [submitBtn addTarget:self action:@selector(submitBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:submitBtn];

    vc = [[ViewController alloc] init];
}

- (void)logBlock:(void(^)(id paramga))myblock
{
    NSArray *arr = @[@"one",
                     @"two",
                     @"three"];
    myblock(arr);

}

- (void)submitBtn
{
    /*
     void(^fin)(NSString *);
    
    fin =  ^(NSString *name){
    
        NSLog(@"%@",name);
        
    };
    
    fin(@"haha");
     */
    
    [self dismissViewControllerAnimated:YES completion:^{
        
        NSArray *arr = @[@"four",
                         @"five",
                         @"six"];
//        vc.sendBlock(arr);
        self.backBlock(arr);
    }];
    
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
