//
//  ViewController.m
//  LoginModule
//
//  Created by gaopeng on 2019/5/20.
//  Copyright © 2019 gaopeng. All rights reserved.
//

#import "ViewController.h"
#import "Login/LoginManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)login:(id)sender {
    [LoginManager loginWithCallback:^(NSDictionary * _Nonnull userInfo) {
        if ([userInfo isKindOfClass:[NSError class]]) {
            NSLog(@"登录失败");
        } else {
            NSLog(@"登录成功");
        }
    }];
}

@end
