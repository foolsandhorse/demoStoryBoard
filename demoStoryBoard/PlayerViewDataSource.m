//
//  PlayerViewDataSource.m
//  demoStoryBoard
//
//  Created by Norbert Henry on 10/22/16.
//  Copyright © 2016 Norbert Henry. All rights reserved.
//

#import "PlayerViewDataSource.h"
#import "PlayerViewController.h"
#import "Players.h"

@implementation PlayerViewDataSource
@synthesize players;

-(NSMutableArray*)createTheDataSource
{
    NSMutableArray *arrayPersonName = [NSMutableArray arrayWithObjects:@"Bob",@"Norbert",@"Leah",@"Chris",@"Same", nil];
    NSMutableArray *arrayPersonGame = [NSMutableArray arrayWithObjects:@"Frisbee",@"FlatBall",@"Football",@"BaseBall",@"Cricket", nil];
    Players *player;
    if (!players)
    {
	  players = [NSMutableArray arrayWithCapacity:20];
    }
    for(int i = 0 ; i < 10 ; i++)
    {
	  player = [[Players alloc] init];
	  player.name = [arrayPersonName objectAtIndex:(rand()% [arrayPersonName count])];
	  player.game = [arrayPersonGame objectAtIndex:(rand() % [arrayPersonGame count])];
	  [player setValue:[NSNumber numberWithInt:(rand() % 5)] forKey:@"rating"];
	  [players addObject:player];
    }
    return players;
}
@end
