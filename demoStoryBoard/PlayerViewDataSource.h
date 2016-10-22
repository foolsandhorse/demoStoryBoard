//
//  PlayerViewDataSource.h
//  demoStoryBoard
//
//  Created by Norbert Henry on 10/22/16.
//  Copyright © 2016 Norbert Henry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlayerViewDataSource : NSObject

@property(nonatomic,strong)NSMutableArray *players;

-(NSMutableArray*)createTheDataSource;
@end
