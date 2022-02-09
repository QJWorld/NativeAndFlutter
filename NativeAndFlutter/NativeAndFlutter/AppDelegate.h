//
//  AppDelegate.h
//  NativeAndFlutter
//
//  Created by qiujun on 2022/2/8.
//

#import <UIKit/UIKit.h>
#import <Flutter/Flutter.h>

/// 修改如下改成 FlutterEngine
@interface AppDelegate : FlutterEngine <UIApplicationDelegate>

@property (nonatomic,strong) FlutterEngine *flutterEngine;


@end

