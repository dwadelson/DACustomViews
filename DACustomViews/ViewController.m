//
//  ViewController.m
//  DACustomViews
//
//  Created by DAVID ADELSON on 9/26/15.
//  Copyright (c) 2015 Ebullient Software, LLC. All rights reserved.
//

#import "ViewController.h"
#import "IFLInfoButton.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    IFLInfoButton *upperInfoButton = [[IFLInfoButton alloc] init];
    [self.view addSubview:upperInfoButton];
    
   upperInfoButton.translatesAutoresizingMaskIntoConstraints = NO;

    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:upperInfoButton
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1
                                                           constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:upperInfoButton
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:1
                                                           constant:-50]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:upperInfoButton
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:nil
                                                          attribute:NSLayoutAttributeNotAnAttribute
                                                         multiplier:1
                                                           constant:self.view.bounds.size.width]];
    
    upperInfoButton.upperLabel.text = @"Keep track of every time you have a coffee";
    [upperInfoButton.button setTitle:@"Log a coffee drink" forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
