//
//  ViewController.m
//  HelloBlock
//
//  Created by 买买提 on 15/11/24.
//  Copyright © 2015年 Intelligence community service (Beijing) Co., Ltd. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"

@interface ViewController ()
{
    NextViewController *next;
}
@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
     next = [[NextViewController alloc] init];
    [next logBlock:^(id paramga) {
       
        NSLog(@"%@",paramga);
    }];
    
    next.backBlock = ^(id arr){
    
        NSLog(@"%@",arr);
    };
    
    NSLog(@" @");
    NSLog(@"\|/");
    NSLog(@" @");
    NSLog(@"\|/");
     NSLog(@"|");
}


- (IBAction)btnActionClick:(id)sender {
    
    
    [self presentViewController:next animated:YES completion:^{
        
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
