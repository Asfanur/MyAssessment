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
    self.navigationController.navigationBarHidden = NO;
    self.view.backgroundColor = self.bgColor;
    self.buttonPressedLabel.text = self.whichButton;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)oneButtonPressed:(CustomButton *)sender {
    self.isGoButtonPressed = YES;
    self.buttonTitle = @"ONE";
    [self performSegueWithIdentifier:@"customButtonTitle" sender:nil];
}
- (IBAction)twoButtonPressed:(CustomButton *)sender {
    self.isGoButtonPressed = YES;
    self.buttonTitle = @"TWO";
    [self performSegueWithIdentifier:@"customButtonTitle" sender:nil];

}
- (IBAction)threeButtonPressed:(id)sender {
    self.isGoButtonPressed = YES;
    self.buttonTitle = @"THREE";
    [self performSegueWithIdentifier:@"customButtonTitle" sender:nil];

}


- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    if (self.isMovingFromParentViewController && !self.isGoButtonPressed) {
        NSLog(@"s");
        self.buttonTitle = @"None";
        [self performSegueWithIdentifier:@"customButtonTitle" sender:nil];


    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
