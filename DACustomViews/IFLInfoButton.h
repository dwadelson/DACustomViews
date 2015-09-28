//
//  IFLInfoButton.h
//  DACustomViews
//
//  Created by DAVID ADELSON on 9/26/15.
//  Copyright (c) 2015 Ebullient Software, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

// Protocol definition starts here
@protocol IFLInfoButtonDelegate <NSObject>
@required
- (void) infoButtonPressed:(id)sender;
@end
// Protocol Definition ends here


@interface IFLInfoButton : UIView

@property (weak, nonatomic) id <IFLInfoButtonDelegate> delegate;
@property (strong, nonatomic) IBOutlet UIView *view;
@property (weak, nonatomic) IBOutlet UILabel *upperLabel;
@property (weak, nonatomic) IBOutlet UILabel *lowerLabel;
@property (weak, nonatomic) IBOutlet UIButton *button;
- (IBAction)buttonPressed:(UIButton *)sender;

@end
