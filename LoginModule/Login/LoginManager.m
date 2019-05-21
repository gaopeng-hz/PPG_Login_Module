//
//  LoginManager.m
//  LoginModule
//
//  Created by gaopeng on 2019/5/20.
//  Copyright © 2019 gaopeng. All rights reserved.
//

#import "LoginManager.h"
#import "LoginViewController.h"

@implementation LoginManager

+ (void)loginWithCallback:(void (^)(NSDictionary * _Nonnull))callback {
    LoginViewController *loginVC = [LoginViewController new];
    loginVC.loginResponse = callback;
    UINavigationController *navVC = [[UINavigationController alloc] initWithRootViewController:loginVC];
    
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:navVC animated:YES completion:nil];
}

@end
