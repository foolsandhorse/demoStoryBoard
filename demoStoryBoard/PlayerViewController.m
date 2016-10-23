//
//  PlayerViewController.m
//  demoStoryBoard
//
//  Created by Norbert Henry on 10/21/16.
//  Copyright © 2016 Norbert Henry. All rights reserved.
//

#import "Players.h"
#import "PlayerViewController.h"

@interface PlayerViewController ()

@end
@implementation PlayerViewController

@synthesize players;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete implementation, return the number of rows
    return [self.players count];
}

-(UIImage*)imageRating:(int)rating
{
    switch (rating)
    {
	  case 1:
		return [UIImage imageNamed:@"1Star"];
		break;
	  case 2:
		return [UIImage imageNamed:@"2Stars"];
		break;
	  case 3:
		return [UIImage imageNamed:@"3Stars"];
		break;
	  case 4:
		return [UIImage imageNamed:@"4Stars"];
	  case 5:
		return [UIImage imageNamed:@"5Stars"];
		
	  default:
		break;
    }
    return nil;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PlayerCell"];
    Players *player = [self.players objectAtIndex:indexPath.row];
    UILabel *label  = (UILabel*)[cell viewWithTag:100];
    label.text = player.name;
    UILabel *label2 = (UILabel*)[cell viewWithTag:101];
    label2.text = player.game;
    UIImageView *ratingImage = (UIImageView*)[cell viewWithTag:102];
    ratingImage.image = [self imageRating:[player rating]];
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
