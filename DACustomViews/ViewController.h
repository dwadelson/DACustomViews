//
//  ViewController.h
//  DACustomViews
//
//  Created by DAVID ADELSON on 9/26/15.
//  Copyright (c) 2015 Ebullient Software, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IFLInfoButton.h"


@interface ViewController : UIViewController <IFLInfoButtonDelegate>

@property (strong,nonatomic) IFLInfoButton *upperInfoButton;
@end

