//
//  Target_CCModule.m
//  CCTextModule
//
//  Created by apple on 2020/10/19.
//

#import "Target_CCModule.h"
#import "ShowCCModuleViewController.h"
@implementation Target_CCModule


- (UIViewController *)Action_CCModel_Text_ViewController:(NSDictionary *)params
{
    typedef void (^CallbackType)(NSString *);
    CallbackType callback = params[@"callback"];
    if (callback) {
        callback(@"success");
    }
    ShowCCModuleViewController *viewController = [[ShowCCModuleViewController alloc] init];
    return viewController;
}

@end
