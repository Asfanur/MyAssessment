//
//  FirstViewController.m
//  MyAssessment
//
//  Created by Asfanur Arafin on 24/04/2015.
//  Copyright (c) 2015 Asfanur Arafin. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()
@property (weak, nonatomic) IBOutlet UILabel *noneLabel;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

// -------------------------------------------------------------------------------
//	fromSecondViewController:unwindSegue
//  Display which button is pressed in previous view
// -------------------------------------------------------------------------------


- (IBAction)fromSecondViewController:(UIStoryboardSegue *)unwindSegue
{
    SecondViewController *secondViewController = unwindSegue.sourceViewController;
    
    if ([secondViewController.buttonTitle isEqualToString:@"None"]) {
        self.noneLabel.text = secondViewController.buttonTitle;
    } else {
        self.noneLabel.text = [NSString stringWithFormat:@"Button Pressed is %@",secondViewController.buttonTitle];
        
    }
    
}


#pragma mark - Navigation

// -------------------------------------------------------------------------------
//	prepareForSegue:segue sender:sender
//  Change background color and title of next view 
// -------------------------------------------------------------------------------


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    SecondViewController *sVC  = segue.destinationViewController;
    
    if ([segue.identifier isEqualToString:@"blue"]) {
        sVC.whichButton = @"Button pressed is 1";
        sVC.bgColor = [UIColor blueColor];
        
    } else if ([segue.identifier isEqualToString:@"red"]) {
        sVC.whichButton = @"Button pressed is 2";
        sVC.bgColor = [UIColor redColor];
        
    } else if ([segue.identifier isEqualToString:@"green"]){
        sVC.whichButton = @"Button pressed is 3";
        sVC.bgColor = [UIColor greenColor];
        
    }
}


@end
