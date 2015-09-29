//
//  UIInsetLabel.m
//  DACustomViews
//
//  Created by DAVID ADELSON on 9/28/15.
//  Copyright (c) 2015 Ebullient Software, LLC. All rights reserved.
//

#import "UIInsetLabel.h"

@implementation UIInsetLabel

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)drawTextInRect:(CGRect)rect {
    
    //i would like to be able to assign _insets with a setter but nothing works...
    
    
    _insets = UIEdgeInsetsMake(5,5,5,5);

    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, _insets)];
}


@end
