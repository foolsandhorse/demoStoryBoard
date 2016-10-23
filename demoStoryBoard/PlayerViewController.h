//
//  PlayerViewController.h
//  demoStoryBoard
//
//  Created by Norbert Henry on 10/21/16.
//  Copyright © 2016 Norbert Henry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerViewController : UITableViewController

@property(nonatomic,copy)NSMutableArray *players;
-(UIImage*)imageRating:(int)rating;

@end
