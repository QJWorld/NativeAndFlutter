//
//  AppDelegate.m
//  NativeAndFlutter
//
//  Created by qiujun on 2022/2/8.
//

#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"

@interface AppDelegate ()


@end

@implementation AppDelegate


/// 在AppDelegate入口初始化即可
#pragma mark - initFlutterEngine
- (void)initFlutterEngine {
    self.flutterEngine = [[FlutterEngine alloc] initWithName:@"WMFlutterEngine"];
    [self.flutterEngine run];
    [GeneratedPluginRegistrant registerWithRegistry:self.flutterEngine];
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self initFlutterEngine];
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
