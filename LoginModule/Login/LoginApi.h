//
//  LoginApi.h
//  LoginModule
//
//  Created by gaopeng on 2019/5/20.
//  Copyright © 2019 gaopeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginApi : NSObject

+ (void)loginWithUsername:(NSString *)username password:(NSString *)password callback:(void(^)(id result))callback;

+ (void)registerWithUsername:(NSString *)username password:(NSString *)password callback:(void(^)(id result))callback;

@end

NS_ASSUME_NONNULL_END
