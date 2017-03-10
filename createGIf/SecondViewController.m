//
//  SecondViewController.m
//  createGIf
//
//  Created by Sally on 2017/3/9.
//  Copyright © 2017年 Sally. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (nonatomic,strong) UIImageView *tom;
@end

@implementation SecondViewController
{
    NSArray *imagesArray;
    NSTimer *myAnimatedTimer;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor darkGrayColor];

    NSArray *imagesArray = [NSArray arrayWithObjects:
                            [UIImage imageNamed:@"0"],
                            [UIImage imageNamed:@"1"],
                            [UIImage imageNamed:@"2"],
                            [UIImage imageNamed:@"3"],
                            [UIImage imageNamed:@"4"],
                            [UIImage imageNamed:@"5"],
                            [UIImage imageNamed:@"6"],
                            [UIImage imageNamed:@"7"],
                            [UIImage imageNamed:@"8"],
                            [UIImage imageNamed:@"9"],
                            [UIImage imageNamed:@"10"],
                            [UIImage imageNamed:@"11"],
                            [UIImage imageNamed:@"12"],
                            [UIImage imageNamed:@"13"],
                            [UIImage imageNamed:@"14"],
                            [UIImage imageNamed:@"15"],
                            [UIImage imageNamed:@"16"],
                            nil];
    
    
//    NSMutableArray  *arrayM = [NSMutableArray array];
////    NSArray *imagesArray = [NSArray array];
//    for (int i=0; i<16; i++) {
//        [arrayM addObject:[UIImage imageNamed:[NSString stringWithFormat:@"%02d.png",i]]];
//       
//    }
//    myAnimatedTimer = [NSTimer scheduledTimerWithTimeInterval:0.04 target:self selector:@selector(setNextImage) userInfo:nil repeats:YES];
   
    
    UIImageView *animationImageView = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 200, 200)];
    
    [self.view addSubview:animationImageView];
    animationImageView.animationImages = imagesArray;//将序列帧数组赋给UIImageView的animationImages属性
    animationImageView.animationDuration = 1.0f;//设置动画时间
    animationImageView.animationRepeatCount = 0;//设置动画次数 0 表示无限
    [animationImageView startAnimating];//开始播放动画
}

-(void)setNextImage
{
    for (int i=0; i<40; i++) {
        myAnimatedTimer = [UIImage imageNamed:[NSString stringWithFormat:@"image%i.png",i]];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
