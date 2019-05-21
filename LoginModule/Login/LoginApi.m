//
//  LoginApi.m
//  LoginModule
//
//  Created by gaopeng on 2019/5/20.
//  Copyright © 2019 gaopeng. All rights reserved.
//

#import "LoginApi.h"

@implementation LoginApi
+ (void)loginWithUsername:(NSString *)username password:(NSString *)password callback:(void (^)(id _Nonnull))callback {
    static NSInteger mockCount;
    mockCount++;
    if (mockCount % 3 == 0) {
        // 模拟每3次失败一次
        callback([NSError errorWithDomain:@"" code:1001 userInfo:@{
                                                                   NSLocalizedDescriptionKey:@"登录失败"
                                                                   }]);
        return;
    }
    NSLog(@"login with username:%@ password:%@", username, password);
    // 模拟网络请求，时长1秒
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        NSLog(@"登录成功");
        callback(@{@"token":@"12321"});
    });
}

+ (void)registerWithUsername:(NSString *)username password:(NSString *)password callback:(void (^)(id _Nonnull))callback {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        callback(@{});
    });
}
@end
