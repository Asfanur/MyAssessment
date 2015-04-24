//
//  SecondViewController.h
//  MyAssessment
//
//  Created by Asfanur Arafin on 24/04/2015.
//  Copyright (c) 2015 Asfanur Arafin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
//Indicates which button is selected in current view
@property (nonatomic,strong) NSString *buttonTitle;
//Indicates which button was pressed in previous view
@property (nonatomic,strong) NSString *whichButton;
//displays background color
@property (nonatomic,strong) UIColor *bgColor;

@end
