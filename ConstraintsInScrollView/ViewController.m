//
//  ViewController.m
//  ConstraintsInScrollView
//
//  Created by jam on 15/10/26.
//  Copyright © 2015年 jam.chenjun. All rights reserved.
//

#import "ViewController.h"
#import "CJMainViewController.h"

@interface ViewController ()

@property (strong,  nonatomic) CJMainViewController *mainViewController;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.mainViewController = [[CJMainViewController alloc] init];
    [self.view addSubview:self.mainViewController.view];
    
    UIView *mainView = self.mainViewController.view;
    mainView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addConstraint:
     [NSLayoutConstraint constraintWithItem:mainView
                                  attribute:(NSLayoutAttributeLeading)
                                  relatedBy:(NSLayoutRelationEqual)
                                     toItem:self.view
                                  attribute:(NSLayoutAttributeLeading)
                                 multiplier:1
                                   constant:0]];
    [self.view addConstraint:
     [NSLayoutConstraint constraintWithItem:mainView
                                  attribute:(NSLayoutAttributeTop)
                                  relatedBy:(NSLayoutRelationEqual)
                                     toItem:self.view
                                  attribute:(NSLayoutAttributeTop)
                                 multiplier:1
                                   constant:0]];
    [self.view addConstraint:
     [NSLayoutConstraint constraintWithItem:mainView
                                  attribute:(NSLayoutAttributeTrailing)
                                  relatedBy:(NSLayoutRelationEqual)
                                     toItem:self.view
                                  attribute:(NSLayoutAttributeTrailing)
                                 multiplier:1
                                   constant:0]];
    [self.view addConstraint:
     [NSLayoutConstraint constraintWithItem:mainView
                                  attribute:(NSLayoutAttributeBottom)
                                  relatedBy:(NSLayoutRelationEqual)
                                     toItem:self.view
                                  attribute:(NSLayoutAttributeBottom)
                                 multiplier:1
                                   constant:0]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
