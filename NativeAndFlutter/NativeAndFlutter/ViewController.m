//
//  ViewController.m
//  NativeAndFlutter
//
//  Created by qiujun on 2022/2/8.
//

#import "ViewController.h"
#import "QJFlutterViewController.h"

@interface ViewController ()
@property (nonatomic,strong) QJFlutterViewController *flutterVC;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initMethodChannel];
    // Do any additional setup after loading the view.
}

/// 打开flutter 模块
/// 跳转到Flutter页面。
- (IBAction)openFlutterPage:(id)sender {
//    self.flutterVC.navigationBarHidden = YES;
    [self showViewController:self.flutterVC sender:nil];
    
}




- (void)initMethodChannel {
    self.flutterVC = [[QJFlutterViewController alloc] init];
//    [self.flutterVC initMethodChannel];
}



@end
