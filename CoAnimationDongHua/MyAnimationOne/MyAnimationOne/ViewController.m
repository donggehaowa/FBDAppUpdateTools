//
//  ViewController.m
//  MyAnimationOne
//
//  Created by feng on 2016/12/15.
//  Copyright © 2016年 冯宝东. All rights reserved.
//

#import "ViewController.h"
#import <SDWebImage/UIImageView+WebCache.h>
@interface ViewController ()
{
    CALayer*blueLayer;
    CALayer*redLayer;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /*
    //使用 masterView 的遮罩
    UIView* blueMasterView=[UIView new];
    blueMasterView.frame=CGRectMake(100, 100, 200, 200);
    blueMasterView.backgroundColor=[UIColor blueColor];
    self.view.backgroundColor=[UIColor brownColor];
    self.view.maskView=blueMasterView;
    */
   
    /*
    //CALayer的基本使用
    CALayer*blueLayer=[CALayer layer];
    blueLayer.frame=CGRectMake(100, 100, 100, 200);
    blueLayer.backgroundColor=[UIColor redColor].CGColor;
    [self.view.layer addSublayer:blueLayer];
    */

    blueLayer=[CALayer layer];
    blueLayer.frame=CGRectMake(207, 104, 100, 100);
    blueLayer.backgroundColor=[UIColor redColor].CGColor;//mySecond myDuck.png myThird
    UIImage *image=[UIImage imageNamed:@"mySecond"];
    blueLayer.contents=(__bridge id _Nullable)(image.CGImage);
    blueLayer.contentsGravity=kCAGravityCenter;
    blueLayer.masksToBounds=YES;
    blueLayer.contentsRect=CGRectMake(0.5, 0.5, 0.5, 0.5);
    blueLayer.contentsScale = [UIScreen mainScreen].scale;
    blueLayer.contentsCenter=CGRectMake(0.25, 0.25, 0.5, 0.5);
    [self.view.layer addSublayer:blueLayer];
    redLayer=[CALayer layer];
    redLayer.frame=CGRectMake(10, 10, 20, 20);
    redLayer.backgroundColor=[UIColor redColor].CGColor;
    [blueLayer  addSublayer:redLayer];
    
    
    
    
    CGRect converRect=[redLayer convertRect:CGRectMake(20, 20, 10, 10) toLayer:blueLayer];
    NSLog(@">>>>>>>>%@",NSStringFromCGRect(converRect));
    
    /*
     // 产看self.view.layer.anchorPoint的用法
     //    [NSTimer scheduledTimerWithTimeInterval:.001 target:self selector:@selector(tick) userInfo:nil repeats:YES];
     //    self.view.layer.anchorPoint=CGPointMake(0.5, 1);
    */
    
    
    UIImageView* imageViewIndex=[UIImageView new];
    imageViewIndex.frame=CGRectMake(100, 200, 240, 300);
    //NSString* httpsImageUrl=@"https://uatipad.u2licai.com/Contract/310108194402135221/iden_front.jpg";
    NSString* httpsImageUrl=@"https://www.fengbaodong.com/me.jpg";
    [imageViewIndex sd_setImageWithURL:[NSURL URLWithString:httpsImageUrl] placeholderImage:nil options:SDWebImageAllowInvalidSSLCertificates];
    [self.view addSubview:imageViewIndex];
    
    
    
}
-(void)tick
{
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSUInteger units = NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
    NSDateComponents *components = [calendar components:units fromDate:[NSDate date]];
    CGFloat hoursAngle = (components.hour / 12.0) * M_PI * 2.0;
    //calculate hour hand angle //calculate minute hand angle
    CGFloat minsAngle = (components.minute / 60.0) * M_PI * 2.0;
    //calculate second hand angle
    CGFloat secsAngle = (components.second / 60.0) * M_PI * 2.0;
    //rotate hands
//    self.hourHand.transform = CGAffineTransformMakeRotation(hoursAngle);
//    self.minuteHand.transform = CGAffineTransformMakeRotation(minsAngle);
    self.view.transform = CGAffineTransformMakeRotation(secsAngle);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
