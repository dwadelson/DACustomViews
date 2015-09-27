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
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
