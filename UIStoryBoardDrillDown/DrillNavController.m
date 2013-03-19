//
//  DrillNavController.m
//  UIStoryBoardDrillDown
//
//  Created by Jason Lust on 5/10/12.
//  Copyright (c) 2012 Stellar Online LLC. All rights reserved.
//

#import "DrillNavController.h"
#import "DrillTableController.h"

@implementation DrillNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*****
     Loads the plist data into memory, the objects are in a node tree of name strings and item array values
     ****/
    NSString* path = [[NSBundle mainBundle] pathForResource:@"ItemList" ofType:@"plist"];
    NSDictionary* thelist = [NSDictionary dictionaryWithContentsOfFile:path];
    
    /*****
     Reference the top ViewController of the UINavigationController thats assigned bu the UIStoryBoard
     The top VC is defined as a DrillTableController so we will cast the type of root so we can access/assign the items property
     *****/
    DrillTableController* root = (DrillTableController*)self.topViewController;
    root.items = [thelist objectForKey:@"items"];
    root.navigationItem.title = [thelist objectForKey:@"name"];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
