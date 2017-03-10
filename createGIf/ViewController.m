//
//  ViewController.m
//  createGIf
//
//  Created by Sally on 2017/3/8.
//  Copyright © 2017年 Sally. All rights reserved.
//

#import "ViewController.h"
#import <ImageIO/ImageIO.h>
#import <MobileCoreServices/MobileCoreServices.h>
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *imagesArray = [NSArray arrayWithObjects:
                           [UIImage imageNamed:@"I_want_tor_btn03@2x  0000"],
                           [UIImage imageNamed:@"I_want_tor_btn03@2x  0001"],
                           [UIImage imageNamed:@"I_want_tor_btn03@2x  0002"],
                           [UIImage imageNamed:@"I_want_tor_btn03@2x  0003"],
                           [UIImage imageNamed:@"I_want_tor_btn03@2x  0004"],
                            [UIImage imageNamed:@"I_want_tor_btn03@2x  0005"],
                             [UIImage imageNamed:@"I_want_tor_btn03@2x  0006"],
                             [UIImage imageNamed:@"I_want_tor_btn03@2x  0007"],
                             [UIImage imageNamed:@"I_want_tor_btn03@2x  0008"],
                             [UIImage imageNamed:@"I_want_tor_btn03@2x  0009"],
                             [UIImage imageNamed:@"I_want_tor_btn03@2x  0010"],
                            nil];
    
    
    UIImageView *animationImageView = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 131, 125)];
    
    [self.view addSubview:animationImageView];
    animationImageView.animationImages = imagesArray;//将序列帧数组赋给UIImageView的animationImages属性
    animationImageView.animationDuration = 2;//设置动画时间
    animationImageView.animationRepeatCount = 0;//设置动画次数 0 表示无限
    [animationImageView startAnimating];//开始播放动画
}
- (IBAction)jumpNextVC:(id)sender {
    SecondViewController *sencondVC = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:sencondVC animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
