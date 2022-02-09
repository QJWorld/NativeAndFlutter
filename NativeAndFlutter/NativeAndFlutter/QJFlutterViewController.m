//
//  QJFlutterViewController.m
//  NativeAndFlutter
//
//  Created by qiujun on 2022/2/8.
//

#import "QJFlutterViewController.h"
#import "AppDelegate.h"

@interface QJFlutterViewController ()

@end

@implementation QJFlutterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


#pragma mark - Initial Methods // 初始化的方法
- (instancetype)init
{
    self = [super init];
    if (self) {
       self = [[QJFlutterViewController alloc] initWithEngine:[self getFlutterEngine] nibName:nil bundle:nil];
    }
    return self;
}

//
//- (void)initMethodChannel {
//    FlutterMethodChannel *methodChannel = [FlutterMethodChannel methodChannelWithName:@"PatientSearchChannel" binaryMessenger:self.binaryMessenger];
//    self.methodChannel = methodChannel;
//    //通过block回调监听通道中来自flutter的消息体 这里做一个dismiss方法，由于iOS中将flutter页面push出来，次数实现dismiss方法，给flutter发送dismss消息，就知道是让iOS将当前页面关闭的动作，iOS收到后，执行关闭操作
//    __weak typeof(self) weakself = self;
//    [methodChannel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
//        __strong typeof(weakself) strongself = weakself;
//        //dissmiss当前页面
//        if([call.method isEqualToString:@"dismiss"]){
////            [strongself.flutterVC dismissViewControllerAnimated:YES completion:nil];
//            [strongself.navigationController popViewControllerAnimated:YES];
//        }
//        if (result) {
//            result(@"回到的地方");
//        }
//
//        //dissmiss当前页面
//        if([call.method isEqualToString:@"pushNative"]){
//            WMLog(@"pushNative 进来了 数据是 %@", call.arguments);
//            WMNoticeSetViewController *VC = [[WMNoticeSetViewController alloc] init];
//            WMLog(@"%@", self .navigationController);
//            [self.navigationController pushViewController:VC animated:YES];
//        }
//
//        //dissmiss当前页面
//        if([call.method isEqualToString:@"pushNativeTwo"]){
//            WMLog(@"pushNativeTwo 进来了 数据是 %@", call.arguments);
//            NSDictionary *dataDic = call.arguments;
//            WMTestViewController *VC = [[WMTestViewController alloc] init];
//            VC.name = dataDic[@"name"];
//            WMLog(@"%@", self.navigationController);
//            [self.navigationController pushViewController:VC animated:YES];
//        }
//    }];
//}

/// 获取引擎
- (FlutterEngine *)getFlutterEngine {
    FlutterEngine *flutterEngine = ((AppDelegate *)UIApplication.sharedApplication.delegate).flutterEngine;
    return flutterEngine;
}




@end
