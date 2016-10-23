//
//  PlayerViewDataSource.h
//  demoStoryBoard
//
//  Created by Norbert Henry on 10/22/16.
//  Copyright © 2016 Norbert Henry. All rights reserved.
//

#import <Foundation/Foundation.h>
@class PlayerViewController;
@interface PlayerViewDataSource : NSObject

@property(nonatomic,copy)NSMutableArray *players;

-(void)createTheDataSource:(PlayerViewController*)playerViewControllerItem;
@end
