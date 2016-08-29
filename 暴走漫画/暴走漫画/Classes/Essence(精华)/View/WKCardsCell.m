//
//  WKCardsCell.m
//  暴走漫画
//
//  Created by 阿拉斯加的狗 on 16/8/30.
//  Copyright © 2016年 阿拉斯加的🐶. All rights reserved.
//

#import "WKCardsCell.h"
#import <UIImageView+WebCache.h>
#import "WKCards.h"
@interface WKCardsCell ()
/** 图像 */
@property (weak, nonatomic) IBOutlet UIImageView *profileImage;
/** 名字 */
@property (weak, nonatomic) IBOutlet UILabel *screenName;
/** 时间 */
@property (weak, nonatomic) IBOutlet UILabel *createTime;
/** 点赞 */
@property (weak, nonatomic) IBOutlet UIButton *dingBtn;
/** 踩 */
@property (weak, nonatomic) IBOutlet UIButton *caiBtn;
/** 分享 */
@property (weak, nonatomic) IBOutlet UIButton *repostBtn;
/** 聊天 */
@property (weak, nonatomic) IBOutlet UIButton *commentBtn;
/** VIP认证 */
@property (weak, nonatomic) IBOutlet UIImageView *vipIcon;

@end

@implementation WKCardsCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    //设置cell的背景
    UIImageView *bg = [[UIImageView alloc]init];
    bg.image = [UIImage imageNamed:@"mainCellBackground"];
    self.backgroundView = bg;
    
    //取消cell的选中样式
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}


//从写set方法进行赋值
- (void)setCards:(WKCards *)cards {

    //设置图像
    [self.profileImage sd_setImageWithURL:[NSURL URLWithString:cards.profile_image] placeholderImage:[UIImage imageNamed:@"defaultUserIcon"]];
    
    //设置昵称
    self.screenName.text = cards.screen_name;
    
    //设置时间
    self.createTime.text = cards.create_time;
    
    //设置按钮
    [self setupWithButton:self.dingBtn count:cards.ding placehodler:@"顶"];
    
    [self setupWithButton:self.caiBtn count:cards.cai placehodler:@"踩"];
    
    [self setupWithButton:self.repostBtn count:cards.repost placehodler:@"分享"];
    
    [self setupWithButton:self.commentBtn count:cards.comment placehodler:@"评论"];
    
    //判断是否是vip认证
    self.vipIcon.hidden = !cards.isSina_v;
}

//设置按钮
- (void)setupWithButton: (UIButton *)button count: (NSInteger)count placehodler: (NSString *)placehodler{
    
    if (count > 10000) {
        placehodler = [NSString stringWithFormat:@"%.1f万人",count / 10000.0];
        
    }else if (count > 0){
        
        placehodler = [NSString stringWithFormat:@"%zd",count];
    }
    
    
    [button setTitle:placehodler forState:UIControlStateNormal];

}
//设置frame的距离
- (void)setFrame:(CGRect)frame {
    
    //设置间距
    NSInteger margin = 10;
    frame.origin.x = margin;
    frame.size.width = frame.size.width - 2 * margin;
    frame.size.height = frame.size.height - margin;
    frame.origin.y += margin;
    [super setFrame:frame];
}

@end
