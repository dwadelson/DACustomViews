//
//  IFLInfoButton.m
//  DACustomViews
//
//  Created by DAVID ADELSON on 9/26/15.
//  Copyright (c) 2015 Ebullient Software, LLC. All rights reserved.
//

#import "IFLInfoButton.h"

@interface IFLInfoButton () {
    CGSize _intrinsicContentSize;
}

@end

@implementation IFLInfoButton


//TODO: figure out how to get label word wrap without setting explicit size value of UILabel in IB

-(id) initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        // 1. load the xib
        
        [[NSBundle mainBundle] loadNibNamed:@"IFLInfoButton" owner:self options:nil];
        
        // 2. set the bounds
        
        self.bounds = self.view.bounds;
        
        // 2a. set the intrinsic content size so that when doing autolayout we don't have to set those constraints
        _intrinsicContentSize = self.bounds.size;
       
        // 3. add as a subview

        [self addSubview:self.view];
        
    }
    return self;
}


//initWithCoder is invoked when you have the item instantiated via a storyboard
- (id) initWithCoder:(NSCoder *)aDecoder {
    
    self = [super initWithCoder:aDecoder];
    if (self) {
        
        //1. Load Interface View
        
        [[NSBundle mainBundle] loadNibNamed:@"IFLInfoButton" owner:self options:nil];
        
        _intrinsicContentSize = self.bounds.size;
       
        
        //2. Load subview
        [self addSubview:self.view];

        
    }
    return self;
}



- (IBAction)buttonPressed:(UIButton *)sender {
    
    NSError *error;
    
    if (self.delegate) {
        [self.delegate infoButtonPressed:self];
    } else {
        
    }
    
    //TODO:  i want to be able to pass in an action via some property here
    //could be a block, but i don't think i really want that
    ///what i want is to pass in a target to which to segue from whichever is the view's viewcontroller.
}

-(CGSize) intrinsicContentSize {
    return _intrinsicContentSize;
}


@end
