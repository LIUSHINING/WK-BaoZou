//
//  WKNewViewController.m
//  暴走漫画
//
//  Created by 阿拉斯加的狗 on 16/8/27.
//  Copyright © 2016年 阿拉斯加的🐶. All rights reserved.
//

#import "WKNewViewController.h"

@interface WKNewViewController ()

@end

@implementation WKNewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = WKGrobeColor;
    
    //设置导航条内容
    [self setUpItem];
    
}

- (void)setUpItem {
    
    //设置导航条View
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    self.navigationItem.leftBarButtonItem = [WKBarButtonItem itemWithImage:@"MainTagSubIcon" hightImage:@"MainTagSubIconClick" action:@selector(clickBtn) target:self];
}

- (void)clickBtn {

    WKLog(@"%s",__func__);
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
