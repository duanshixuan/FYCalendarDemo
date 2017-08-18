//
//  NSDate+FYCalendar.h
//  FYCalendarView
//
//  Created by fangyou on 2017/8/17.
//  Copyright © 2017年 段世宜. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (FYCalendar)
/**
 *  获得当前 NSDate 对象对应的日子
 */
- (NSInteger)dateDay;

/**
 *  获得当前 NSDate 对象对应的月份
 */
- (NSInteger)dateMonth;

/**
 *  获得当前 NSDate 对象对应的年份
 */
- (NSInteger)dateYear;

/**
 *  获得当前 NSDate 对象的上个月的某一天（此处定为15号）的 NSDate 对象
 */
- (NSDate *)previousMonthDate;

/**
 *  获得当前 NSDate 对象的下个月的某一天（此处定为15号）的 NSDate 对象
 */
- (NSDate *)nextMonthDate;

/**
 *  获得当前 NSDate 对象对应的月份的总天数
 */
- (NSInteger)totalDaysInMonth;

/**
 *  获得当前 NSDate 对象对应月份当月第一天的所属星期
 */
- (NSInteger)firstWeekDayInMonth;


/**
 date 转 Str

 @return yyyy-MM-dd格式的字符串
 */
-(NSString *)StringWithyyyyMMdd;

/**
 字符串转date

 @param dateStr yyyy-MM-dd格式的字符串。
 @return 返回一个date
 */
+(NSDate *)getDateWithyyyyMMddStr:(NSString *)dateStr;


@end
