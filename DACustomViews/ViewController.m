//
//  ViewController.m
//  DACustomViews
//
//  Created by DAVID ADELSON on 9/26/15.
//  Copyright (c) 2015 Ebullient Software, LLC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end


@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view addSubview:self.upperInfoButton];
    
   _upperInfoButton.translatesAutoresizingMaskIntoConstraints = NO;

    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_upperInfoButton
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1
                                                           constant:0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:_upperInfoButton
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:1
                                                           constant:-50]];

//    
    _upperInfoButton.upperLabel.text = @"Keep track every time you have a coffee.";
    _upperInfoButton.lowerLabel.text = @"The test has four more days to run.  Today is a 'normal coffee' day.";
    [_upperInfoButton.button setTitle:@"Log a coffee drink" forState:UIControlStateNormal];
    _upperInfoButton.delegate = self;
    
    
}


- (void) infoButtonPressed:(id)sender {
    if (sender == self.upperInfoButton) {

    }
}

- (IFLInfoButton *) upperInfoButton {
    if (!_upperInfoButton) {
        _upperInfoButton = [[IFLInfoButton alloc] init];
    }
    
    return _upperInfoButton;
}

@end
