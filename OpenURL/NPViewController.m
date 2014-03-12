//
//  NPViewController.m
//  OpenURL
//
//  Created by cssweb on 14-3-11.
//  Copyright (c) 2014年 北京中软万维上海分公司. All rights reserved.
//

#import "NPViewController.h"

@interface NPViewController ()

@end

@implementation NPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)createNumber:(id)sender;
{
    label.text = [NSString stringWithFormat:@"%d",rand()%1000];
}

- (IBAction)openurl:(id)sender;
{
//    NSString *URLString = [NSString stringWithFormat:@"test://www.test.com?number=%@",label.text];
//    NSURL *url = [NSURL URLWithString:URLString];
//    [[UIApplication sharedApplication] openURL:url];
    //放在需要的地方，调用即可
    NSURL * urlStr = [NSURL URLWithString:@"test://x=6,60000,5000,add"];//后面为参数
    if ([[UIApplication sharedApplication] canOpenURL:urlStr]) {
        NSLog(@"can go to test");
        [[UIApplication sharedApplication] openURL:urlStr];
    }else{
        NSLog(@"can not go to test！！！！！");
    }
//    [[UIApplication sharedApplication] openURL:urlStr];

}
@end
