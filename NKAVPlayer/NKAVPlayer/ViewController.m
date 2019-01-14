//
//  ViewController.m
//  NKAVPlayer
//
//  Created by 聂宽 on 2019/1/13.
//  Copyright © 2019年 聂宽. All rights reserved.
//

#import "ViewController.h"
#import "NKAVPlayerView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat palyerW = [UIScreen mainScreen].bounds.size.width;
    NKAVPlayerView *playerView = [[NKAVPlayerView alloc] init];
    playerView.frame = CGRectMake(0, 0, palyerW, palyerW / 7 * 4);
    
    [self.view addSubview:playerView];
    NSString *moviePath = [[NSBundle mainBundle] pathForResource:@"movie" ofType:@"mp4"];
    [playerView settingPlayerItemWithUrl:[NSURL fileURLWithPath:moviePath]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
