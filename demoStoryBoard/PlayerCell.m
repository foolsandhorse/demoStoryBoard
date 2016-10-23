//
//  PlayerCell.m
//  demoStoryBoard
//
//  Created by Norbert Henry on 10/22/16.
//  Copyright © 2016 Norbert Henry. All rights reserved.
//

#import "PlayerCell.h"

@implementation PlayerCell

@synthesize playername;
@synthesize playergame;
@synthesize ratingimage;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
