//
//  SegueRetainViewController.h
//  UIStoryBoardExamples
//
//  Created by Jason Lust on 3/18/13.
//  Copyright (c) 2013 Stellar Online LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SegueRetainViewController : UIViewController

@property(nonatomic, retain) UIStoryboardSegue* segue;

- (IBAction)back:(id)sender;

@end
