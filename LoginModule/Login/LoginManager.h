//
//  LoginManager.h
//  LoginModule
//
//  Created by gaopeng on 2019/5/20.
//  Copyright © 2019 gaopeng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LoginManager : NSObject

+ (void)loginWithCallback:(void(^)(NSDictionary *userInfo))callback;

@end

NS_ASSUME_NONNULL_END
