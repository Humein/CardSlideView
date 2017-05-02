//
//  ViewController.m
//  CardSlideView
//
//  Created by 鑫鑫 on 2017/5/2.
//  Copyright © 2017年 xinxin. All rights reserved.
//

#import "ViewController.h"
#import "CardSlideView.h"
#define SCREENWITH   [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    NSArray *data = @[@"01",@"02",@"03",@"04",@"05",@"01",@"02",@"03",@"04",@"05"];
    CGRect frame = CGRectMake(0,44, SCREENWITH, SCREENHEIGHT-64);
    CardSlideView *card = [[CardSlideView alloc]initWithFrame:frame items:data];
    [self.view addSubview:card];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
