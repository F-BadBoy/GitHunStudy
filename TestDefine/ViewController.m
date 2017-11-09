//
//  ViewController.m
//  TestDefine
//
//  Created by 冯一男 on 16/1/25.
//  Copyright © 2016年 冯一男. All rights reserved.
//

#define test [[NSUserDefaults standardUserDefaults] objectForKey:@"Server"]

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *documentsPaths=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory
                                                                , NSUserDomainMask
                                                                , YES);
    NSString *databaseFilePath=[documentsPaths objectAtIndex:0];
    NSLog(@"数据库路径:%@",databaseFilePath);
    NSLog(@"%@ ------ test",test);
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(self.view.center.x, self.view.center.y, 100, 100);
    btn.backgroundColor = [UIColor yellowColor];
    [btn addTarget:self action:@selector(btnClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}

- (void)btnClicked
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:@"123456" forKey:@"Server"];
    
    NSLog(@"%@ ****** test",test);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
