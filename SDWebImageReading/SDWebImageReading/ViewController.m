//
//  ViewController.m
//  SDWebImageReading
//
//  Created by pangshishan on 2018/3/26.
//  Copyright © 2018年 pangshishan. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+WebCache.h"
#import "UIView+WebCache.h"
#import <Masonry.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *imageV = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    [self.view addSubview:imageV];
    imageV.backgroundColor = [UIColor redColor];
    [self addConstraintInImageV:imageV];
//    [imageV mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.center.mas_equalTo(self.view);
//        make.width.height.mas_equalTo(200);
//    }];
    

    NSString *imgStr = @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1522057364170&di=1830388b2513bcc9f6ae2f6e65ef37fa&imgtype=0&src=http%3A%2F%2Fimg3.iqilu.com%2Fdata%2Fattachment%2Fforum%2F201308%2F22%2F085824ivhznhbb5iww4w0b.jpg";
    [imageV sd_setShowActivityIndicatorView:YES];
    [imageV sd_setImageWithURL:[NSURL URLWithString:imgStr] placeholderImage:[UIImage imageNamed:@"TestImage"]];
    
}

- (void)addConstraintInImageV:(UIImageView *)imageV
{
    
    imageV.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:imageV
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:imageV
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:1.0
                                                           constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:imageV
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeWidth
                                                         multiplier:0.0
                                                           constant:200]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:imageV
                                                          attribute:NSLayoutAttributeHeight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeHeight
                                                         multiplier:0.0
                                                           constant:200]];
}


@end
