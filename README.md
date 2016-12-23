# FBDAppUpdateTools 工具类的简介
## 使用说明
### 步奏1:在项目的pod 文件里面添加一句话： pod 'FBDAppUpdateTools', '0.2'

### 步奏2:在命令行中 pod install ；

### 步奏3:回到xcode 中直接 COM+R 键组合；

### 步奏4:使用代码前需要导入头文件 

### 步奏5:AppDelegate 入口类中添加code
```
[FBDAppUpdateVersionTool appAutoUpdateVersionAfterDelaySecond:5];
```
# API 简介：

```
//
//  FBDAppUpdateVersionTool.h
//  NewMedSci
//
//  Created by feng on 2016/11/30.
//  Copyright © 2016年 MedSci. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface FBDAppUpdateVersionTool : NSObject
//static NSString* appVersionURL=@"https://itunes.apple.com/cn/lookup?id=1012163770";
//static NSString* appStorePath=@"https://itunes.apple.com/cn/app/id1012163770?mt=8";
//给开发者预留的苹果商店的地址和APP的信息
@property (nonatomic,strong)NSString*m_appVersionURL;
@property (nonatomic,strong)NSString*m_appStorePath;
@property (nonatomic,assign)BOOL showReleaseNote;

//供其他开发者重写tipView UI上面的Control 需要自己写控制逻辑
@property (nonatomic,strong)UIView*tipPopView;

/**
创建单例类

@return 实例
*/
+(instancetype)defaultTool;
/**
APP 自动检测升级提示
*/
+(void)appAutoUpdateVersion;
/*
APP 自动检测升级提示 (延迟多少秒)
*/
+(void)appAutoUpdateVersionAfterDelaySecond:(NSInteger)delaySecond;

//让PopView 提示视图消失
-(void)dismissUpdatePopView;

@end

```
