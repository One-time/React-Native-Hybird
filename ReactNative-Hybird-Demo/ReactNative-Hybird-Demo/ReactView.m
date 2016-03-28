//
//  ReactView.m
//  ReactNative-Hybird-Demo
//
//  Created by Jack on 16/3/28.
//  Copyright © 2016年 Jack. All rights reserved.
//

#import "ReactView.h"
#import "RCTRootView.h"
@implementation ReactView

- (void)awakeFromNib {
    NSString *urlString = @"http://localhost:8081/index.ios.bundle";
    NSURL *jsCodeLocation = [NSURL URLWithString:urlString];
    RCTRootView *rootView = [[RCTRootView alloc]initWithBundleURL:jsCodeLocation moduleName:@"SimpleApp" initialProperties:nil launchOptions:nil];
    
    [self addSubview:rootView];
    rootView.frame = self.bounds;
}

@end
