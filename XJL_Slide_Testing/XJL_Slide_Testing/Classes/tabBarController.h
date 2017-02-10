//
//  tabBarController.h
//  侧滑
//
//  Created by strongit on 16/8/19.
//  Copyright © 2016年 strongit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface tabBarController : UITabBarController

-(void)addChild;

@property (nonatomic, readwrite, assign) UIEdgeInsets imageInsets;

@property (nonatomic, readwrite, assign) UIOffset titlePositionAdjustment;


@end
