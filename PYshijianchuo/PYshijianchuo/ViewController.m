//
//  ViewController.m
//  PYshijianchuo
//
//  Created by Apple on 16/7/19.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self PYshijianduan];
    
}

- (void)PYshijianduan {
    //时间戳转化为当前时间
    NSDate *date = [NSDate date];
    NSString *timeStr= [NSString stringWithFormat:@"%f", date.timeIntervalSince1970];
    //+ 8小时(本地时间)
    NSTimeInterval time = [timeStr doubleValue] + 28800;
    NSDate *detailDate = [NSDate dateWithTimeIntervalSince1970:time];
    NSLog(@"当前时间 %@", detailDate);
    
    //时间段
    NSString *str_1 = @"2016-07-19 13:24:00";
    NSString *str_2 = @"2016-07-19 13:31:00";
    //实例化一个NSDateFormatter对象
    NSDateFormatter* dateFormat = [[NSDateFormatter alloc] init];
    //设定时间格式,这里可以设置成自己需要的格式
    [dateFormat setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *date_1 =[dateFormat dateFromString:str_1];
    NSDate *date_2 = [dateFormat dateFromString:str_2];
    
    //+8小时(本地时间)
    NSString *timeStr_1 = [NSString stringWithFormat:@"%f", date_1.timeIntervalSince1970];
    NSTimeInterval timeInterval_1 = [timeStr_1 doubleValue] + 28800;
    NSDate *date_11 = [NSDate dateWithTimeIntervalSince1970:timeInterval_1];
    NSLog(@"开始时间 %@", date_11);
    NSString *timeStr_2 = [NSString stringWithFormat:@"%f", date_2.timeIntervalSince1970];
    NSTimeInterval timeInterval_2 = [timeStr_2 doubleValue] + 28800;
    NSDate *date_22 = [NSDate dateWithTimeIntervalSince1970:timeInterval_2];
    NSLog(@"结束时间 %@", date_22);
    
    //时间段
    if (date.timeIntervalSince1970 >= date_1.timeIntervalSince1970 && date.timeIntervalSince1970 <= date_2.timeIntervalSince1970) {
        NSLog(@"时间期限内");
    } else {
        NSLog(@"不在时间期限内");
    }

}

















- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
