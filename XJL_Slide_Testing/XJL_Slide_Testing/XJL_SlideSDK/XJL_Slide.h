//
//  XJL_Slide.h
//  XJL_Slide
//
//  Created by strongit on 17/2/8.
//  Copyright © 2017年 strongit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface XJL_Slide : NSObject

+(void)addChildWithId:(id)child withTitleArray:(NSArray *)titleArray withNumberCount:(NSInteger)number withSelectLineViewColor:(UIColor *)selectColor withNomalColorArray:(NSArray *)nomalColorArray withSelectColorArray:(NSArray *)selectColorArray withChildVCsArray:(NSArray *)chilsVCsArray withViewY:(CGFloat)viewY withViewHeight:(CGFloat)viewHeight;
@end
