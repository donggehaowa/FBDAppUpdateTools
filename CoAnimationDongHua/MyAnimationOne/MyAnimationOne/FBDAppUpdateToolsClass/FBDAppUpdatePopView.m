//
//  FBDAppUpdatePopView.m
//  NewMedSci
//
//  Created by feng on 2016/12/20.
//  Copyright © 2016年 MedSci. All rights reserved.
//
#define BottomButtonHeight   40
#define ScreenWW    [UIScreen mainScreen].bounds.size.width
#define ScreenHH    [UIScreen mainScreen].bounds.size.height
#define POPPaddingLR 40.f
#define POPPaddingTop 100.f


#import "FBDAppUpdatePopView.h"
#import <CoreText/CoreText.h>
@implementation FBDAppUpdatePopView
{
    UIView*_backView;
    UIView*_popView;
    UIImageView* _leftImageView;
    UIImageView* _topBarImageView;
    UILabel*_topTitleLabel;
    UILabel* _middleContentLabel;
    
    
    
    UIButton* _sureUpdateButton;
    UIButton* _cancelUpdateButton;
    AppUpdateButtonBlock _leftSureButtonBlock;
    
}
//延迟 delaySecond秒 弹出pop APPUpdate视图 并带有Block参数回调
-(void)showAfterDelaySecond:(NSInteger)delaySecond appUpdateButtonBlock:(AppUpdateButtonBlock)sureButtonBlock
{
    _leftSureButtonBlock=[sureButtonBlock copy];
    [self performSelector:@selector(showUpdateViewInWindow) withObject:nil afterDelay:delaySecond];

}
-(void)showUpdateViewInWindowAppUpdateButtonBlock:(AppUpdateButtonBlock)sureButtonBlock
{
    _leftSureButtonBlock=[sureButtonBlock copy];
    [self showUpdateViewInWindow];
}
-(void)showUpdateViewInWindow
{
    [self addBackView:self];
    UIWindow* mainWindow=[UIApplication sharedApplication].keyWindow;
    if (!mainWindow)
    {
        mainWindow=[[UIApplication sharedApplication].windows lastObject];
    }
    //默认的pop视图
    if (!self.popView)
    {
        [self createUpdateUI];
    }else
    //用户自定义的pop视图
    {
        //没有添加到父视图上就 addsubview
        if (![self.subviews containsObject:_popView])
        {
            [self addSubview:_popView];
        }
    }
    [mainWindow addSubview:self];
    [self addAnimationForPopView];
}
-(void)createUpdateUI
{
    _popView=[UIView new];
    _popView.frame=CGRectMake(POPPaddingLR, POPPaddingTop, ScreenWW-POPPaddingLR*2, ScreenHH-2*POPPaddingTop);
    _popView.backgroundColor=[UIColor brownColor];
    CGFloat popViewWidth=CGRectGetWidth(_popView.frame);
    CGFloat popViewHeigth=CGRectGetHeight(_popView.frame);
    
    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.colors = @[(__bridge id)[UIColor blueColor].CGColor, (__bridge id)[UIColor grayColor].CGColor, (__bridge id)[UIColor orangeColor].CGColor];
    gradientLayer.locations = @[@0.2, @0.5, @1.0];
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(0, 1.0);
    gradientLayer.frame = CGRectMake(0, 0, popViewWidth, popViewHeigth-BottomButtonHeight);
    [_popView.layer addSublayer:gradientLayer];

    UIImage* leftImage=[UIImage imageNamed:@"dingDuang.png"];
    _leftImageView=[[UIImageView alloc] initWithFrame:CGRectMake((CGRectGetWidth(_popView.frame))-80,-20, 80, 80)];
    _leftImageView.image=leftImage;
    _topBarImageView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, CGRectGetWidth(_popView.frame), 100)];
    _topBarImageView.image=[UIImage imageNamed:@"topBarOther.jpg"];
    [_popView addSubview:_topBarImageView];
    [_popView addSubview:_leftImageView];
    
    
    _topTitleLabel=[UILabel new];
    _topTitleLabel.frame=CGRectMake(0, CGRectGetMaxY(_topBarImageView.frame)+5, popViewWidth, 20);
    _topTitleLabel.textAlignment=NSTextAlignmentCenter;
    _topTitleLabel.textColor=[UIColor whiteColor];
    _topTitleLabel.font=[UIFont systemFontOfSize:22];
    _topTitleLabel.text=@"检测到APP的新版本啦！";
    [_topTitleLabel sizeToFit];
    [_popView addSubview:_topTitleLabel];
    _middleContentLabel=[UILabel new];
    if (_comeContent)
    {
        _middleContentLabel.font = [UIFont systemFontOfSize:14];
        _middleContentLabel.numberOfLines =0;
        _middleContentLabel.textAlignment =NSTextAlignmentLeft;
        // 调整行间距
        NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:_comeContent];
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        [paragraphStyle setLineSpacing:5];
        [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [_comeContent length])];
        // 调整字间距
        long number = 1.5;
        CFNumberRef num = CFNumberCreate(kCFAllocatorDefault,kCFNumberSInt8Type,&number);
        [attributedString addAttribute:(id)kCTKernAttributeName value:(__bridge id)num range:NSMakeRange(0,[attributedString length])];
        [attributedString addAttribute:NSForegroundColorAttributeName value:[UIColor whiteColor] range:NSMakeRange(0,[attributedString length])];
        
        _middleContentLabel.attributedText = attributedString;
    }
    _middleContentLabel.frame=CGRectMake(0, CGRectGetMaxY(_topTitleLabel.frame)+10, popViewWidth, popViewHeigth-BottomButtonHeight-20-100);
    [_popView addSubview:_middleContentLabel];
    UIView*bottonHLine=[UIView new];
    bottonHLine.frame=CGRectMake(0, popViewHeigth-BottomButtonHeight, popViewWidth, 1);
    bottonHLine.backgroundColor=[UIColor lightGrayColor];
    [_popView addSubview:bottonHLine];
    
    UIView*bottonSLine=[UIView new];
    bottonSLine.frame=CGRectMake(popViewWidth/2.0, popViewHeigth-BottomButtonHeight, 1, BottomButtonHeight-1);
    bottonSLine.backgroundColor=[UIColor lightGrayColor];
    [_popView addSubview:bottonSLine];
    
    CGRect sureCGRect=CGRectMake(0, CGRectGetMaxY(bottonHLine.frame), popViewWidth/2.0, BottomButtonHeight);
    CGRect cancelCGRect=CGRectMake(popViewWidth/2.0, CGRectGetMaxY(bottonHLine.frame), popViewWidth/2.0, BottomButtonHeight);
    _sureUpdateButton=[UIButton buttonWithType:UIButtonTypeCustom];
    _cancelUpdateButton=[UIButton buttonWithType:UIButtonTypeCustom];
    _sureUpdateButton.frame=sureCGRect;
    _cancelUpdateButton.frame=cancelCGRect;
    [_sureUpdateButton setTitle:@"更新" forState:UIControlStateNormal];
    [_cancelUpdateButton setTitle:@"取消" forState:UIControlStateNormal];
    [_cancelUpdateButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [_sureUpdateButton  addTarget:self action:@selector(_sureUpdateButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [_cancelUpdateButton  addTarget:self action:@selector(_cancelUpdateButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    
    [_popView addSubview:_sureUpdateButton];
    [_popView addSubview:_cancelUpdateButton];
    [self addSubview:_popView];
    
}

-(void)addAnimationForPopView
{
    [UIView animateWithDuration:0.5 animations:^{
        _popView.transform=CGAffineTransformScale(_popView.transform, 1.2, 1.2);
    }completion:^(BOOL finished) {
        [UIView animateWithDuration:0.5 animations:^{
            _popView.transform=CGAffineTransformIdentity;
        }];
    }];
}



#pragma mark - 添加背景视图
- (void) addBackView:(UIView *) msuperView
{
    _backView = [[UIView alloc] init];
    _backView.frame = msuperView.bounds;
    _backView.backgroundColor = [UIColor blackColor];
    _backView.alpha = 0.4;
    
    //UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapBg)];
    //[_backView addGestureRecognizer:tap];
    [msuperView addSubview:_backView];
    
}

#pragma mark 点击背景阴影视图触发的方法
- (void)tapBg{
    [_backView removeFromSuperview];
    _backView = nil;
    [UIView animateWithDuration:0.25 animations:^{
        CGRect sf = self.frame;
        sf.origin.y = [UIScreen mainScreen].bounds.size.height;
        self.frame = sf;
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}

#pragma mark--Private
-(void)_sureUpdateButtonPressed:(UIButton*)sender
{
    [self tapBg];
    if (_leftSureButtonBlock)
    {
        _leftSureButtonBlock();
    }
    
    
}
-(void)_cancelUpdateButtonPressed:(UIButton*)sender
{
    [self tapBg];

}
-(void)dismissPopView
{
    [self tapBg];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
