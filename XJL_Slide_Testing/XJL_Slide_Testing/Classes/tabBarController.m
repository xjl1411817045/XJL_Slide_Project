//
//  tabBarController.m
//  侧滑
//
//  Created by strongit on 16/8/19.
//  Copyright © 2016年 strongit. All rights reserved.
//

#import "tabBarController.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "MainController.h"
@interface tabBarController ()

@end
@implementation tabBarController
- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)addChild
{
    MainController *mainCon = [[MainController alloc]init];
    mainCon.title = @"title-Home";
    
    OneViewController *one = [[OneViewController alloc]init];
    one.title = @"titile-111";
    
    TwoViewController *two = [[TwoViewController alloc]init];
    two.title = @"title-2222";
    
    ThreeViewController *three = [[ThreeViewController alloc]init];
    three.title = @"title-3333";
    NSArray *controllerArray = @[mainCon,one,two,three];
    NSArray *tabBarItemArray = @[@"111",@"222",@"333",@"4444"];

    NSArray *normalImageName = @[@"home_normal2.png",@"mycity_normal.png",@"aa.png",@"bb.png"];
    NSArray *selectedImageName = @[@"home_highlight.png",@"mycity_highlight.png",@"select_aa.png",@"select_bb.png"];

    for (int i=0; i<[controllerArray count]; i++)
    {
        [self addOneChildViewController:controllerArray[i]
                              WithTitle:tabBarItemArray[i]
                        normalImageName:normalImageName[i]
                      selectedImageName:selectedImageName[i]];
        UINavigationController *naviga = [[UINavigationController alloc]initWithRootViewController:controllerArray[i]];
        naviga.tabBarItem.title = tabBarItemArray[i];
        [self addChildViewController:naviga];
    }
    UINavigationController *test = (UINavigationController *)self.viewControllers[1];
    UITabBarItem *curTabBarItem=test.tabBarItem;
    [curTabBarItem setBadgeValue:@"8"];
}

- (void)addOneChildViewController:(UIViewController *)viewController
                        WithTitle:(NSString *)title
                  normalImageName:(NSString *)normalImageName
                selectedImageName:(NSString *)selectedImageName {
    if (normalImageName) {
        UIImage *normalImage = [UIImage imageNamed:normalImageName];
        normalImage = [normalImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        viewController.tabBarItem.image = normalImage;
    }
    if (selectedImageName) {
        UIImage *selectedImage = [UIImage imageNamed:selectedImageName];
        selectedImage = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        viewController.tabBarItem.selectedImage = selectedImage;
    }
}

- (BOOL)shouldCustomizeImageInsets {
    BOOL shouldCustomizeImageInsets = self.imageInsets.top != 0.f || self.imageInsets.left != 0.f || self.imageInsets.bottom != 0.f || self.imageInsets.right != 0.f;
    return shouldCustomizeImageInsets;
}

- (BOOL)shouldCustomizeTitlePositionAdjustment {
    BOOL shouldCustomizeTitlePositionAdjustment = self.titlePositionAdjustment.horizontal != 0.f || self.titlePositionAdjustment.vertical != 0.f;
    return shouldCustomizeTitlePositionAdjustment;
}


- (void)viewWillAppear:(BOOL)animated
{   [super viewWillAppear:YES];
    //    self.navigationController.navigationBarHidden = YES;
}

/**
 *  协议代理方法，用于侧滑左控制器跳转
 *
 *  @param trag <#trag description#>
 */
- (void)pushsubVC:(id)trag
{
    [self.navigationController pushViewController:trag animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
