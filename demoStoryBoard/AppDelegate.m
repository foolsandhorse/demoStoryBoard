//
//  AppDelegate.m
//  demoStoryBoard
//
//  Created by Norbert Henry on 10/21/16.
//  Copyright © 2016 Norbert Henry. All rights reserved.
//

#import "AppDelegate.h"
#import "Players.h"
#import "PlayerViewController.h"
#import "PlayerViewDataSource.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
{
    NSMutableArray *players;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    PlayerViewDataSource *dataSource = [[PlayerViewDataSource alloc]init];
    NSMutableArray *datasourceForTableView = [dataSource createTheDataSource];
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
    UITabBarController *tabBarItem = (UITabBarController*)[[self window] rootViewController];
    
    UINavigationController *navigationBar = [[tabBarItem viewControllers] objectAtIndex:0];
    
    PlayerViewController *playerViewController = [[navigationBar viewControllers] objectAtIndex:0];
    playerViewController.players = players;
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
	// Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
