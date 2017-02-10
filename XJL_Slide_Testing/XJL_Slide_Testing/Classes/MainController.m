//
//  MainController.m
//  XJL_Slide_test
//
//  Created by strongit on 17/2/9.
//  Copyright © 2017年 strongit. All rights reserved.
//

#import "MainController.h"
#import "XJL_Slide.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThourViewController.h"
#import "ThreeViewController.h"

@interface MainController ()

@end

@implementation MainController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor  = [UIColor whiteColor];
    NSArray *titleArray = @[@"新闻",@"主题",@"游戏",@"娱乐",@"趣玩",@"测试",@"aa",@"dd",@"cc"];
    OneViewController *one = [[OneViewController alloc]init];
    TwoViewController *two = [[TwoViewController alloc]init];
    ThourViewController *thour = [[ThourViewController alloc]init];
    ThreeViewController *three  = [[ThreeViewController alloc]init];
   
    NSArray *childVCsArray = @[one,two,three,thour,one,two,three,thour,one];
    
    /**参数说明
         withTitleArray----文字说明
         withNumberCount----显示多少列
         withSelectLineViewColor----下划线的颜色（nil为使用默认的颜色）
         withNomalColorArray-----普通文字的颜色，是一个数组，传的rgb的数值（nil为使用默认的颜色）
         withSelectColorArray----选中文字的颜色，是一个数组，传的是rgb的数值（nil为使用默认的颜色）
         withChildVCsArray----控制器数组
         withViewY------为文字说明所在的view的y值（从屏幕最顶端开始计算）
         withViewHeight-----为collectionView的高度
     */
    [XJL_Slide addChildWithId:self withTitleArray:titleArray withNumberCount:2 withSelectLineViewColor:nil withNomalColorArray:nil withSelectColorArray:nil withChildVCsArray:childVCsArray withViewY:64 withViewHeight:500];
    // Do any additional setup after loading the view.
}


//#pragma mark 代理方法
-(void)setMethodWithChildFor:(id)controller withIndex:(NSInteger)index
{
    if(0 == index)
    {
        NSLog(@"0000");
    }else if (1 == index)
    {
        NSLog(@"1111");

    }else if (2 == index)
    {
        NSLog(@"2222");

    }else if (3 == index)
    {
        NSLog(@"3333");

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
