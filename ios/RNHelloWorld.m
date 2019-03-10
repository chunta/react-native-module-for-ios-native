//
//  RNHelloWorld.m
//  PhotoViewer
//
//  Created by nmi on 2019/3/10.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "RNHelloWorld.h"
#import <React/RCTLog.h>    //React 的log功能，有點像console.log()

@implementation RNHelloWorld

RCT_EXPORT_MODULE();//匯出我們的原生模組
RCT_EXPORT_METHOD(addEvent:(NSString *)name location:(NSString *)location)
{
  RCTLogInfo(@"Pretending to create an event %@ at %@", name, location);
}

RCT_EXPORT_METHOD(addDateEvent:(NSString *)name location:(NSString *)location date:(NSDate *)date)
{
  // Date is ready to use!
  NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
  [formatter setDateFormat:@"YYYY-MM-dd"];
  RCTLogInfo(@"Pretending to create an event %@ %@", [formatter stringFromDate:date], name);
}

@end
