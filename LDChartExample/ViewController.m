//
//  ViewController.m
//  LDChart
//
//  Created by huangfeng on 2017/4/12.
//  Copyright © 2017年 me.fin. All rights reserved.
//

#import "ViewController.h"
#import "LDLineChart.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    LDLineChart * chart = [[LDLineChart alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 240)];
    chart.gradientStartColor = [UIColor colorWithRed:252/255.0 green:198/255.0 blue:175/255.0 alpha:1.0];
    chart.gradientEndColor = [UIColor colorWithRed:251/255.0 green:130/255.0 blue:144/255.0 alpha:1.0];
    
    chart.data = @[@187.96,@178.96, @185.50, @180.96,  @185.48, @195.48];
    chart.XLabels = @[@"2016-10",@"11",@"12",@"2017-01",@"02",@"03"];
    [chart setTextOfYAxis:^NSString *(NSInteger index, NSNumber * data){
        return [NSString stringWithFormat:@"+%.2f",[data doubleValue]];
    }];
    
    [self.view addSubview:chart];
    
    
    chart = [[LDLineChart alloc] initWithFrame:CGRectMake(0, 370, self.view.frame.size.width, 240)];
    chart.gradientStartColor = [UIColor colorWithRed:147/255.0 green:194/255.0 blue:243/255.0 alpha:1.0];
    chart.gradientEndColor = [UIColor colorWithRed:129/255.0 green:139/255.0 blue:204/255.0 alpha:1.0];
    chart.data = @[@18208, @19740, @19740, @21950, @21273, @23339, @24339];
    chart.XLabels = @[@"2016-06",@"07",@"08",@"09",@"10",@"11",@"12"];
    [chart setTextOfYAxis:^NSString *(NSInteger index, NSNumber * str){
        return [NSString stringWithFormat:@"%li",[str integerValue]];
    }];
    [self.view addSubview:chart];
}

@end
