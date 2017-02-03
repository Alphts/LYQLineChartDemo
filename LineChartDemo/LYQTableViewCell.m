//
//  LYQTableViewCell.m
//  LineChartDemo
//
//  Created by Alphts on 2017/2/3.
//  Copyright © 2017年 Alphts. All rights reserved.
//

#import "LYQTableViewCell.h"
#import "LYQLineChartView.h"

@interface LYQTableViewCell ()

@property (nonatomic,strong) LYQLineChartView * view;
@end

@implementation LYQTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        [self setUpUI];
    }
    
    return self;
}

- (void)setUpUI{
    
    self.view = [[LYQLineChartView alloc] init];
    NSArray * arrayX = @[@"8-1",@"8-3",@"8-4",@"8-5",@"8-6",@"8-7",@"8-8"];
    NSArray *  arrayY =  @[@"100",@"200",@"300",@"400",@"500",@"600",@"700"];
    
    [self.view drawRectWithArrayX:arrayX arrayY:arrayY dataArray:nil];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.contentView addSubview:self.view];
    
    UIButton * button = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
    [self addSubview:button];
    button.backgroundColor = [UIColor orangeColor];
    [button addTarget:self action:@selector(didButton) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton * button2 = [[UIButton alloc]initWithFrame:CGRectMake(345, 0, 30, 30)];
    [self addSubview:button2];
    button2.backgroundColor = [UIColor orangeColor];
    [button2 addTarget:self action:@selector(didButtont) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)didButtont{
    NSArray *  dataArray = @[@"50",@"300",@"200",@"500",@"700",@"200"];
    self.view.duration = 4;
    [self.view drawRectWithDataArray:dataArray];
    
}
-(void)didButton{
    
    NSArray *  dataArray = @[@"550",@"100",@"200",@"600",@"700"];
    self.view.duration = 2;
    
    [self.view drawRectWithDataArray:dataArray];
}


-(void)layoutSubviews{
    
    [super layoutSubviews];
    self.view.frame = CGRectMake(20, 20, self.contentView.frame.size.width - 40, self.frame.size.height - 40);
    
}
@end

