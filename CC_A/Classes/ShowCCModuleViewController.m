//
//  ShowCCModuleViewController.m
//  CCTextModule
//
//  Created by apple on 2020/10/19.
//

#import "ShowCCModuleViewController.h"
#import <Masonry/Masonry.h>

@interface ShowCCModuleViewController ()

@property (nonatomic, strong) UIButton *pushBViewControllerButton;

@end

@implementation ShowCCModuleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.pushBViewControllerButton];
}

- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];

    [self.pushBViewControllerButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
        make.size.mas_equalTo(CGSizeMake(100, 100));
    }];
    
}

#pragma mark - event response
- (void)didTappedPushBViewControllerButton:(UIButton *)button
{
    NSLog(@"11111111111111111111111111");
}

#pragma mark - getters and setters
- (UIButton *)pushBViewControllerButton
{
    if (_pushBViewControllerButton == nil) {
        _pushBViewControllerButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_pushBViewControllerButton setTitle:@"push B view controller" forState:UIControlStateNormal];
        [_pushBViewControllerButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_pushBViewControllerButton addTarget:self action:@selector(didTappedPushBViewControllerButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _pushBViewControllerButton;
}

@end
