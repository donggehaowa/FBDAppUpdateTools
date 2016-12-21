//
//  FBDAppUpdatePopView.h
//  NewMedSci
//
//  Created by feng on 2016/12/20.
//  Copyright © 2016年 MedSci. All rights reserved.
//
typedef void(^AppUpdateButtonBlock)(void);

#import <UIKit/UIKit.h>

@interface FBDAppUpdatePopView : UIView
@property (nonatomic,strong)NSString*comeContent;
@property (nonatomic,strong)UIView*popView;
//快速弹出pop APPUpdate视图
-(void)showUpdateViewInWindow;
//快速弹出pop APPUpdate视图 带有sureBlock参数回调
-(void)showUpdateViewInWindowAppUpdateButtonBlock:(AppUpdateButtonBlock)sureButtonBlock;
//延迟 delaySecond秒 弹出pop APPUpdate视图 并带有Block参数回调
-(void)showAfterDelaySecond:(NSInteger)delaySecond appUpdateButtonBlock:(AppUpdateButtonBlock)sureButtonBlock;
//让视图消失
-(void)dismissPopView;

@end
