//
//  ViewController.m
//  FYCalendarView
//
//  Created by fangyou on 2017/8/17.
//  Copyright © 2017年 段世宜. All rights reserved.
//

#import "ViewController.h"
#import "FYCalendarView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGFloat width = self.view.bounds.size.width ;
    
    CGPoint origin = CGPointMake(0, 50);
    
    FYCalendarView *calendar = [[FYCalendarView alloc] initWithFrameOrigin:origin width:width];
    calendar.calendarBasicColor = [UIColor redColor]; // 更改颜色
    [self.view addSubview:calendar];
    // 点击某一天的回调
    
    
    calendar.didSelectDayHandler = ^(NSInteger year, NSInteger month, NSInteger day) {
        NSLog(@"year :%li month %li day %li",year,month,day);
        
    };

    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
