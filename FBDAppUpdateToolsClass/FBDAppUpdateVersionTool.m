//v2.0
//  FBDAppUpdateVersionTool.m
//  NewMedSci
//
//  Created by feng on 2016/11/30.
//  Copyright © 2016年 MedSci. All rights reserved.
//

#import "FBDAppUpdateVersionTool.h"
#import "AppVersionModel.h"
#import <CoreText/CoreText.h>
#import "FBDAppUpdatePopView.h"
NSString* appVersionURL=@"https://itunes.apple.com/cn/lookup?id=1012163770";
NSString* appStorePath=@"https://itunes.apple.com/cn/app/id1012163770?mt=8";
NSString* resultsKey=@"results";

static FBDAppUpdateVersionTool *appSinTan;
@interface FBDAppUpdateVersionTool ()<UIAlertViewDelegate>
{
    UIAlertView* alertUpdateView;
    FBDAppUpdatePopView*popTipView;
}

@end
@implementation FBDAppUpdateVersionTool
+(instancetype)defaultTool
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        appSinTan=[[self alloc]init];
        appSinTan.showReleaseNote=YES;
    });
    return appSinTan;
}
/*
 APP 自动检测升级提示 (延迟多少秒)
 */
+(void)appAutoUpdateVersionAfterDelaySecond:(NSInteger)delaySecond
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delaySecond * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self appAutoUpdateVersion];
    });
}

/**
 APP +自动检测升级提示
 */
+(void)appAutoUpdateVersion
{
    [[self defaultTool] appAutoUpdateVersion];
}
/**
 APP -自动检测升级提示
 */
-(void)appAutoUpdateVersion
{
    dispatch_queue_t indexQueue =dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(indexQueue, ^{
        if (self.m_appVersionURL)
        {
            appVersionURL=self.m_appVersionURL;
        }
        if (self.m_appStorePath) {
            appStorePath=self.m_appStorePath;
        }
        
        
        NSURLRequest* _myRequest=[[NSURLRequest alloc] initWithURL:[NSURL URLWithString:appVersionURL] cachePolicy:NSURLRequestReturnCacheDataElseLoad timeoutInterval:60];
        NSURLSession* _mySession=[NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration] delegate:nil delegateQueue: [NSOperationQueue mainQueue]];
        NSURLSessionDataTask*_myTask=[_mySession dataTaskWithRequest:_myRequest completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
            
            NSDictionary* json = [NSJSONSerialization
                                  JSONObjectWithData:data
                                  options:kNilOptions
                                  error:&error];
            id obj=json;
            NSArray *allArray=[obj objectForKey:resultsKey];
            NSDictionary* appVersionDic=[allArray firstObject];
            AppVersionModel*resultVersionModel=[[AppVersionModel alloc]initWithDictionary:appVersionDic];
            NSLog(@"线上版本的Version是：%@",resultVersionModel.version);
            /*
             理论依据： 线上版本大于本地版本号 就是要更新app了 弹出提示框
             第一种情况： 苹果审核的时候由于审核的版本号大于线上的，也就是线上版本号小于本地的版本号，所以就不会弹出提示框
             */
            
            //    当前的版本
            NSDictionary *infoDic=[[NSBundle mainBundle]infoDictionary];
            NSString *locationVersion= [infoDic objectForKey:@"CFBundleShortVersionString"];
            NSString*  romoteVersion=resultVersionModel.version;
            float loc=[locationVersion floatValue];
            float rom=[romoteVersion floatValue];
            
            if (loc>=rom)
            { //不弹出提示窗
                
                
            }
            else
            { //弹出提示窗
                NSString*tipMSG=@"我们梅斯医学APP有新的版本要更新了,为了更好的提升您的用户体验，请前往AppStore下载最新的版本！";
                if (self.showReleaseNote&&resultVersionModel.releaseNotes)
                {
                    tipMSG=resultVersionModel.releaseNotes; //提示更新的内容
                }
                appSinTan->alertUpdateView=[[UIAlertView alloc]initWithTitle:@"有新版本更新温馨提示" message:nil  delegate:appSinTan
                                                           cancelButtonTitle:@"更新" otherButtonTitles:@"取消", nil];
                tipMSG=[tipMSG stringByAppendingString:@"\n"];
                UILabel*textLabel= [self getAppUpdateMsgLabelWithMSG:tipMSG];
                [appSinTan->alertUpdateView setValue:textLabel forKey:@"accessoryView"];
                //[appSinTan->alertUpdateView show];
                
                popTipView=[[FBDAppUpdatePopView alloc]initWithFrame:[UIScreen mainScreen].bounds];
                popTipView.comeContent=tipMSG;
                if (self.tipPopView)
                {
                    popTipView.popView=self.tipPopView;
                }
                [popTipView showUpdateViewInWindowAppUpdateButtonBlock:^{
                    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:appStorePath]])
                    {
                        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:appStorePath]];
                    }
                    
                }];

            }
                }];
        
        [_myTask  resume];
   
        
 /***************下面是为了不引入AFNetWorking我们做了上面原生的网络请求 cocopod就可以不添加依赖库了*********************/
  /*
   NSArray *allArray=[obj objectForKey:resultsKey];
   NSDictionary* appVersionDic=[allArray firstObject];
   AppVersionModel*resultVersionModel=[[AppVersionModel alloc]initWithDictionary:appVersionDic];
   NSLog(@"线上版本的Version是：%@",resultVersionModel.version);

        
        //    当前的版本
        NSDictionary *infoDic=[[NSBundle mainBundle]infoDictionary];
        NSString *locationVersion= [infoDic objectForKey:@"CFBundleShortVersionString"];
        NSString*  romoteVersion=resultVersionModel.version;
        
        //            NSError *parseError = nil;
        //
        //            NSData *jsonData = [NSJSONSerialization dataWithJSONObject:appVersionDic options:NSJSONWritingPrettyPrinted error:&parseError];
        //            NSLog(@"%@",[[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding]);
        
        float loc=[locationVersion floatValue];
        float rom=[romoteVersion floatValue];
        
        if (loc>=rom)
        { //不弹出提示窗
            
            
        }
        else
        { //弹出提示窗
            NSString*tipMSG=@"我们梅斯医学APP有新的版本要更新了,为了更好的提升您的用户体验，请前往AppStore下载最新的版本！";
            if (self.showReleaseNote&&resultVersionModel.releaseNotes)
            {
                tipMSG=resultVersionModel.releaseNotes; //提示更新的内容
            }
            appSinTan->alertUpdateView=[[UIAlertView alloc]initWithTitle:@"有新版本更新温馨提示" message:nil  delegate:appSinTan
                                                       cancelButtonTitle:@"更新" otherButtonTitles:@"取消", nil];
            tipMSG=[tipMSG stringByAppendingString:@"\n"];
            UILabel*textLabel= [self getAppUpdateMsgLabelWithMSG:tipMSG];
            [appSinTan->alertUpdateView setValue:textLabel forKey:@"accessoryView"];
            //[appSinTan->alertUpdateView show];
            
            popTipView=[[FBDAppUpdatePopView alloc]initWithFrame:[UIScreen mainScreen].bounds];
            popTipView.comeContent=tipMSG;
            if (self.tipPopView)
            {
                popTipView.popView=self.tipPopView;
            }
            [popTipView showUpdateViewInWindowAppUpdateButtonBlock:^{
                if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:appStorePath]])
                {
                    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:appStorePath]];
                }
                
            }];
            
            
            
            
        }

   */
        /*
         PS：对上面的code进行逻辑声明
         理论依据： 线上版本大于本地版本号 就是要更新app了 弹出提示框
         第一种情况： 苹果审核的时候由于审核的版本号大于线上的，也就是线上版本号小于本地的版本号，所以就不会弹出提示框
         */
        
        
    });
    
    
}

//让PopView 提示视图消失
-(void)dismissUpdatePopView
{
    [popTipView dismissPopView];
    
}

#pragma mark---UIAlertViewDelegate
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex==1)
    {
        NSLog(@"第二个按钮 取消");
        
    }else if (buttonIndex==0)
    {
        NSLog(@"第一个按钮 更新");
        if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:appStorePath]])
        {
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:appStorePath]];
        }
    }
}
-(UILabel*)getAppUpdateMsgLabelWithMSG:(NSString*)tipMSG
{
    //设置内容左边对齐
    UILabel *textLabel = [[UILabel alloc] init];
    textLabel.font = [UIFont systemFontOfSize:14];
    textLabel.numberOfLines =0;
    textLabel.textAlignment =NSTextAlignmentLeft;
    // 调整行间距
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:tipMSG];
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:5];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [tipMSG length])];
    
    //                // 调整字间距
    long number = 1.5;
    CFNumberRef num = CFNumberCreate(kCFAllocatorDefault,kCFNumberSInt8Type,&number);
    [attributedString addAttribute:(id)kCTKernAttributeName value:(__bridge id)num range:NSMakeRange(0,[attributedString length])];
    
    textLabel.attributedText = attributedString;
    return textLabel;
}



@end
