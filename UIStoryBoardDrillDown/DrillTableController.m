//
//  DrillTableController.m
//  UIStoryBoardDrillDown
//
//  Created by Jason Lust on 5/10/12.
//  Copyright (c) 2012 Stellar Online LLC. All rights reserved.
//

#import "DrillTableController.h"
#import "DetailsController.h"

@implementation DrillTableController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

#pragma mark - UIStoryBoard Delegate

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    UITableViewCell* cell = (UITableViewCell*)sender;
    NSIndexPath* indexPath = [self.tableView indexPathForCell:cell];
    NSDictionary* rowData = [self.items objectAtIndex:indexPath.row];
    if ([segue.identifier isEqualToString:@"loopbackSegue"]) {
        DrillTableController* drillVC = (DrillTableController*)segue.destinationViewController;
        drillVC.items = [rowData objectForKey:@"items"];
        drillVC.title = [rowData objectForKey:@"name"];
    } else if ([segue.identifier isEqualToString:@"detailSegue"]) {
        DetailsController* detailVC = (DetailsController*)segue.destinationViewController;
        detailVC.name = [rowData objectForKey:@"name"];
        //detailVC.imageName = [rowData objectForKey:@"imageName"];
    }
}

#pragma mark - UITableView Datasource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.items count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString* loopbackCell = @"loopbackCell";
    static NSString* detailCell = @"detailCell";
    
    UITableViewCell* cell;
    NSDictionary* rowData = [self.items objectAtIndex:indexPath.row];
    if ([rowData objectForKey:@"items"]) {
        cell = [tableView dequeueReusableCellWithIdentifier:loopbackCell];
    } else {
        cell = [tableView dequeueReusableCellWithIdentifier:detailCell];
    }
    cell.textLabel.text = [rowData objectForKey:@"name"];
    return cell;
}

#pragma mark - UITableView Delegate methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
