//
//  IFLInfoButton.h
//  DACustomViews
//
//  Created by DAVID ADELSON on 9/26/15.
//  Copyright (c) 2015 Ebullient Software, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IFLInfoButton : UIView
@property (strong, nonatomic) IBOutlet UIView *view;
@property (weak, nonatomic) IBOutlet UILabel *upperLabel;
@property (weak, nonatomic) IBOutlet UILabel *lowerLabel;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end
