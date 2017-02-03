//
//  LYQLineChartView.h
//  折线图
//
//  Created by Alphts on 2017/2/3.
//  Copyright © 2017年 Alphts. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LYQLineChartView : UIView

/**
 直接绘制折线图
 
 @param arrayX X轴的数值数组
 @param arrayY Y轴的数值数组
 @param dataArray 数据源纵坐标数值数组
 */
-(void)drawRectWithArrayX:(NSArray *)arrayX arrayY:(NSArray *)arrayY dataArray:(NSArray *)dataArray;


/**
 触摸绘制折线图
 
 @param dataArray 数据源纵坐标
 */
-(void)drawRectWithDataArray:(NSArray *)dataArray;


/**
 绘制时长
 */
@property (nonatomic,assign) CFTimeInterval  duration;




@end
