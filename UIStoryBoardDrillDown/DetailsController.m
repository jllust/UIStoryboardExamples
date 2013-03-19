//
//  DetailsController.m
//  UIStoryBoardDrillDown
//
//  Created by Jason Lust on 5/10/12.
//  Copyright (c) 2012 Stellar Online LLC. All rights reserved.
//

#import "DetailsController.h"

@implementation DetailsController

@synthesize name;

- (void)viewDidLoad {
    [super viewDidLoad];
    nameLbl.text = self.name;
    albumImgv.image = [UIImage imageNamed:self.imageName];
}

@end
