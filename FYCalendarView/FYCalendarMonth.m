//
//  FYCalendarMonth.m
//  FYCalendarView
//
//  Created by fangyou on 2017/8/17.
//  Copyright © 2017年 段世宜. All rights reserved.
//

#import "FYCalendarMonth.h"
#import "NSDate+FYCalendar.h"
@implementation FYCalendarMonth
- (instancetype)initWithDate:(NSDate *)date {
    if (self = [super init]) {
        _monthDate = date;
        _totalDays = [self setupTotalDays];
        _firstWeekday = [self setupFirstWeekday];
        _year = [self setupYear];
        _month = [self setupMonth];
    }
    return self;
}

- (NSInteger)setupTotalDays {
    return [_monthDate totalDaysInMonth];
}

- (NSInteger)setupFirstWeekday {
    return [_monthDate firstWeekDayInMonth];
}

- (NSInteger)setupYear {
    return [_monthDate dateYear];
}

- (NSInteger)setupMonth {
    return [_monthDate dateMonth];
}

@end
