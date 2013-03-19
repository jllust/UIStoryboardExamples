//
//  SegueRetainViewController.m
//  UIStoryBoardExamples
//
//  Created by Jason Lust on 3/18/13.
//  Copyright (c) 2013 Stellar Online LLC. All rights reserved.
//

#import "SegueRetainViewController.h"

@implementation SegueRetainViewController

- (IBAction)back:(id)sender {
    [self.segue performSelector:@selector(reverse)];
}

@end
