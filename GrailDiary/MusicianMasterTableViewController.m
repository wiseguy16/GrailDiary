//
//  MusicianMasterTableViewController.m
//  GrailDiary
//
//  Created by Gregory Weiss on 8/1/16.
//  Copyright © 2016 Gregory Weiss. All rights reserved.
//

#import "MusicianMasterTableViewController.h"
#import "MusicianDetailViewController.h"
#import "Musician.h"

@interface MusicianMasterTableViewController ()

@property NSMutableArray *musicians;

@end

@implementation MusicianMasterTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Highest Paid Per Show";
    
    [self loadMusicians];
}

#pragma mark - Get hero objects outof the JSON and load them all in a NSDictionary

- (void)loadMusicians
{
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"musicians" ofType:@"json"];
    // This is a built in method that allows us to load a JSON file into native Cocoa objects (NSDictionaries and NSArrays).
    NSArray *musiciansArrayForJSON = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:filePath] options:NSJSONReadingAllowFragments error:nil];
    
    for (NSDictionary *aDict in musiciansArrayForJSON)
    {
        
        Musician *aMusician = [Musician musicianWithDictionary:aDict];
        [self.musicians addObject:aMusician];
        
    }
    
//    NSSortDescriptor *sort = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
//    [self.heroes sortUsingDescriptors:[NSArray arrayWithObject:sort]];
    [self.tableView reloadData];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.musicians.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MusicianCell" forIndexPath:indexPath];
    
    Musician *aMusician = self.musicians[indexPath.row];
    
    // Configure the cell...
    cell.textLabel.text = aMusician.name;
    cell.detailTextLabel.text = aMusician.paymentPerShow;
    
    
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
