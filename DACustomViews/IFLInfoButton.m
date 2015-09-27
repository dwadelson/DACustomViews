//
//  IFLInfoButton.m
//  DACustomViews
//
//  Created by DAVID ADELSON on 9/26/15.
//  Copyright (c) 2015 Ebullient Software, LLC. All rights reserved.
//

#import "IFLInfoButton.h"

@implementation IFLInfoButton


-(id) initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}


//initWithCoder is invoked when you have the item instantiated via a storyboard
- (id) initWithCoder:(NSCoder *)aDecoder {
    
    self = [super initWithCoder:aDecoder];
    if (self) {
        
        //1. Load Interface View
        
        [[NSBundle mainBundle] loadNibNamed:@"IFLInfoButton" owner:self options:nil];
        
        //2. Load subview
        [self addSubview:self.view];
        
    }
    return self;
}

- (IBAction)buttonPressed:(UIButton *)sender {
}
@end
