//
//  RegisterViewController.m
//  LoginModule
//
//  Created by gaopeng on 2019/5/20.
//  Copyright © 2019 gaopeng. All rights reserved.
//

#import "RegisterViewController.h"
#import "LoginApi.h"
#import <SVProgressHUD.h>

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"Register";
}

- (IBAction)viewUserRule:(id)sender {
    UIStoryboard *loginSB = [UIStoryboard storyboardWithName:@"Login" bundle:nil];
    UIViewController *userRoleVC = [loginSB instantiateViewControllerWithIdentifier:@"userRule"];
    [self.navigationController pushViewController:userRoleVC animated:YES];
}

- (IBAction)registerAccount:(id)sender {
    [SVProgressHUD showWithStatus:@"注册中..."];
    [LoginApi registerWithUsername:@"root" password:@"root" callback:^(id  _Nonnull result) {
        if (![result isKindOfClass:[NSError class]]) {
            [SVProgressHUD showSuccessWithStatus:@"注册成功，请使用账号密码登录"];
            [SVProgressHUD dismissWithDelay:1 completion:^{
                [self.navigationController popViewControllerAnimated:YES];
            }];
        }
    }];
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
