//
//  PlayerCell.h
//  demoStoryBoard
//
//  Created by Norbert Henry on 10/22/16.
//  Copyright © 2016 Norbert Henry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerCell : UITableViewCell

@property(nonatomic,strong)IBOutlet UILabel *playername;
@property(nonatomic,strong)IBOutlet UILabel *playergame;
@property(nonatomic,strong)IBOutlet UIImageView *ratingimage;

@end
