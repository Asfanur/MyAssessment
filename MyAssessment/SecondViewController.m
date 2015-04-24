//
//  SecondViewController.m
//  MyAssessment
//
//  Created by Asfanur Arafin on 24/04/2015.
//  Copyright (c) 2015 Asfanur Arafin. All rights reserved.
//

#import "SecondViewController.h"
#import "CustomButton.h"

@interface SecondViewController ()
@property (nonatomic) BOOL isGoButtonPressed;
@property (weak, nonatomic) IBOutlet UILabel *buttonPressedLabel;
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    //Change Background color and title
    self.view.backgroundColor = self.bgColor;
    self.buttonPressedLabel.text = self.whichButton;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

// -------------------------------------------------------------------------------
//	ONE button pressed
// -------------------------------------------------------------------------------

- (IBAction)oneButtonPressed:(CustomButton *)sender {
    self.isGoButtonPressed = YES;
    self.buttonTitle = @"ONE";
    [self performSegueWithIdentifier:@"customButtonTitle" sender:nil];
}

// -------------------------------------------------------------------------------
//	TWO button pressed
// -------------------------------------------------------------------------------

- (IBAction)twoButtonPressed:(CustomButton *)sender {
    self.isGoButtonPressed = YES;
    self.buttonTitle = @"TWO";
    [self performSegueWithIdentifier:@"customButtonTitle" sender:nil];
    
}

// -------------------------------------------------------------------------------
//	THREE button pressed
// -------------------------------------------------------------------------------

- (IBAction)threeButtonPressed:(id)sender {
    self.isGoButtonPressed = YES;
    self.buttonTitle = @"THREE";
    [self performSegueWithIdentifier:@"customButtonTitle" sender:nil];
    
}


- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    // Check if back button is pressed 
    if (self.isMovingFromParentViewController && !self.isGoButtonPressed) {
        self.buttonTitle = @"None";
        [self performSegueWithIdentifier:@"customButtonTitle" sender:nil];
        
        
    }
}


@end
