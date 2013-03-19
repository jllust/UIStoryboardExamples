//
//  DetailsController.h
//  UIStoryBoardDrillDown
//
//  Created by Jason Lust on 5/10/12.
//  Copyright (c) 2012 Stellar Online LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DetailsController : UIViewController {
    IBOutlet UILabel* nameLbl;
    IBOutlet UIImageView* albumImgv;
}

@property(nonatomic, retain) NSString* name;
@property(nonatomic, retain) NSString* imageName;

@end
