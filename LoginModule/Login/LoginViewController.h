//
//  LoginViewController.h
//  LoginModule
//
//  Created by gaopeng on 2019/5/20.
//  Copyright © 2019 gaopeng. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginViewController : UIViewController

@property (nonatomic, copy) void(^loginResponse)(id result);

@end

NS_ASSUME_NONNULL_END
