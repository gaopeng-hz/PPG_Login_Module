//
//  LoginViewController.m
//  LoginModule
//
//  Created by gaopeng on 2019/5/20.
//  Copyright © 2019 gaopeng. All rights reserved.
//

#import "LoginViewController.h"
#import "LoginApi.h"
#import "RegisterViewController.h"
#import <SVProgressHUD.h>

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Login";
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImageView *logoImgView = [[UIImageView alloc] initWithFrame:CGRectMake(200, 80, 100, 100)];
    NSBundle *bundle = [NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:@"PPGLogin" ofType:@"bundle"]];
    logoImgView.image = [UIImage imageNamed:@"Logo" inBundle:bundle compatibleWithTraitCollection:nil];
    [self.view addSubview:logoImgView];
    
    UIButton *loginBtn = [[UIButton alloc] initWithFrame:CGRectMake(80, 200, 80, 40)];
    [loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    [loginBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.view addSubview:loginBtn];
    [loginBtn addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *registerBtn = [[UIButton alloc] initWithFrame:CGRectMake(80, 300, 80, 40)];
    [registerBtn setTitle:@"注册" forState:UIControlStateNormal];
    [registerBtn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [self.view addSubview:registerBtn];
    [registerBtn addTarget:self action:@selector(goRegister) forControlEvents:UIControlEventTouchUpInside];
}

- (void)login {
    [SVProgressHUD showWithStatus:@"登录中..."];
    [LoginApi loginWithUsername:@"root" password:@"root" callback:^(id  _Nonnull result) {
        [SVProgressHUD dismiss];
        self.loginResponse(result);
        [self dismissViewControllerAnimated:YES completion:nil];
    }];
}

- (void)goRegister {
    RegisterViewController *registerVC = [RegisterViewController new];
    [self.navigationController pushViewController:registerVC animated:YES];
}

@end
