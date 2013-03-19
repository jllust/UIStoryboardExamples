//
//  CustomSegues.m
//  
//
//  Created by Jason Lust on 3/10/13.
//  Copyright (c) 2013 Stellar Online LLC. All rights reserved.
//

#import "CustomSegues.h"

@implementation CustomSegue

- (void)perform {
    UIViewController *src = (UIViewController*)self.sourceViewController;
    UIViewController *dst = (UIViewController*)self.destinationViewController;
    CGRect r = src.view.frame;
    [dst performSelector:@selector(setSegue:) withObject:self];
    [src.view.superview insertSubview:dst.view belowSubview:src.view];
    dst.view.center = CGPointMake(r.size.width * 0.5f, r.size.height * -0.5f);
    [UIView animateWithDuration:0.5f animations:^{
        dst.view.center = CGPointMake(r.size.width * 0.5f, r.size.height * 0.5f);
        src.view.center = CGPointMake(r.size.width * 0.5f, (r.size.height * 1.4f));
    }];
}

- (void)reverse {
    UIViewController *src = (UIViewController*)self.sourceViewController;
    UIViewController *dst = (UIViewController*)self.destinationViewController;
    CGRect r = src.view.frame;
    [UIView animateWithDuration:0.5f animations:^{
        dst.view.center = CGPointMake(r.size.width * 0.5f, r.size.height * -0.5f);
        src.view.center = CGPointMake(r.size.width * 0.5f, r.size.height * 0.5f);
    } completion:^(BOOL finished) {
        [dst.view removeFromSuperview];
    }];
}

@end
