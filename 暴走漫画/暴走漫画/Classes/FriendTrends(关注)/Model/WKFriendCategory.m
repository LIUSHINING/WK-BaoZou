//
//  WKFriendCategory.m
//  暴走漫画
//
//  Created by 阿拉斯加的狗 on 16/8/27.
//  Copyright © 2016年 阿拉斯加的🐶. All rights reserved.
//

#import "WKFriendCategory.h"

@implementation WKFriendCategory


- (NSMutableArray *)users {

    if (_users == nil) {
        
        _users = [NSMutableArray array];
    }

    return _users;
}


@end
