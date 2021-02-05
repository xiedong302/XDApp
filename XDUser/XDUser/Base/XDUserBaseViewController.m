//
//  XDUserBaseViewController.m
//  XDUser
//
//  Created by xiedong on 2021/2/5.
//

#import "XDUserBaseViewController.h"
#import <XDTAF/XDTAFHandler.h>
#import <XDUserSDK/XDUserManager.h>

@interface XDUserBaseViewController ()

@end

@implementation XDUserBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    dispatch_queue_t queue = dispatch_queue_create("com.XDUserBaseViewController.queue", DISPATCH_QUEUE_SERIAL);
    XDTAFHandler *handler = [[XDTAFHandler alloc] initWithSerialQueue:queue delegate:nil];
    NSLog(@"handler %@", handler);
    
    [XDUserManager start];
    
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
