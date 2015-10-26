//
//  CJMainViewController.m
//  ConstraintsInScrollView
//
//  Created by jam on 15/10/26.
//  Copyright © 2015年 jam.chenjun. All rights reserved.
//

#import "CJMainViewController.h"

@interface CJMainViewController ()

@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UIView *firstView;
@property (weak, nonatomic) IBOutlet UIView *secondView;

@property (strong, nonatomic) UIView *thirdView;

@end

@implementation CJMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // add a thirdView
    self.thirdView = [[UIView alloc] init];
    self.thirdView.backgroundColor = [UIColor purpleColor];
    [self.containerView addSubview:self.thirdView];
    
    self.thirdView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addConstraint:
     [NSLayoutConstraint constraintWithItem:self.thirdView
                                  attribute:(NSLayoutAttributeLeading)
                                  relatedBy:(NSLayoutRelationEqual)
                                     toItem:self.containerView
                                  attribute:(NSLayoutAttributeLeading)
                                 multiplier:1
                                   constant:40]];
    [self.view addConstraint:
     [NSLayoutConstraint constraintWithItem:self.thirdView
                                  attribute:(NSLayoutAttributeTop)
                                  relatedBy:(NSLayoutRelationEqual)
                                     toItem:self.secondView
                                  attribute:(NSLayoutAttributeBottom)
                                 multiplier:1
                                   constant:100]];
    [self.view addConstraint:
     [NSLayoutConstraint constraintWithItem:self.thirdView
                                  attribute:(NSLayoutAttributeTrailing)
                                  relatedBy:(NSLayoutRelationEqual)
                                     toItem:self.containerView
                                  attribute:(NSLayoutAttributeTrailing)
                                 multiplier:1
                                   constant:-40]];
    [self.view addConstraint:
     [NSLayoutConstraint constraintWithItem:self.thirdView
                                  attribute:(NSLayoutAttributeHeight)
                                  relatedBy:(NSLayoutRelationEqual)
                                     toItem:self.containerView
                                  attribute:(NSLayoutAttributeHeight)
                                 multiplier:0
                                   constant:128]];
    [self.view addConstraint:
     [NSLayoutConstraint constraintWithItem:self.containerView
                                  attribute:(NSLayoutAttributeBottom)
                                  relatedBy:(NSLayoutRelationEqual)
                                     toItem:self.thirdView
                                  attribute:(NSLayoutAttributeBottom)
                                 multiplier:1
                                   constant:65]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
