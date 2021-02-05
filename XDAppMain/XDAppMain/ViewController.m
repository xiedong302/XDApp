//
//  ViewController.m
//  XDAppMain
//
//  Created by xiedong on 2021/2/4.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIViewController *vc = [[NSClassFromString(@"XDUserBaseViewController") alloc] init];
    
    [self addChildViewController:vc];
    [self.view addSubview:vc.view];
    vc.view.frame = self.view.frame;
    // Do any additional setup after loading the view.
}


@end
