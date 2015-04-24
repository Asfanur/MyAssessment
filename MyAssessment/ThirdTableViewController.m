//
//  ThirdTableViewController.m
//  MyAssessment
//
//  Created by Asfanur Arafin on 24/04/2015.
//  Copyright (c) 2015 Asfanur Arafin. All rights reserved.
//

#import "ThirdTableViewController.h"

@interface ThirdTableViewController ()

@end

@implementation ThirdTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
     return 12;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"dateCell" forIndexPath:indexPath];
    NSDate *todaysDate = [NSDate date];
    NSDate *dateForRow = [todaysDate dateByAddingTimeInterval:(60 * 60 * 24 * indexPath.row)];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"dd MMMM yyyy"];
    cell.textLabel.text = [formatter stringFromDate:dateForRow];
    cell.textLabel.textAlignment = NSTextAlignmentCenter;
    
    return cell;
}

@end
