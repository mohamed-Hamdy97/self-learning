//
//  HomeTableTableViewController.m
//  TableViewControllerDemo
//
//  Created by mohamed Elnagar on 27/01/2022.
//

#import "HomeTableTableViewController.h"

@interface HomeTableTableViewController ()
//create props to make table dynamic
@property NSMutableArray *male;
@property NSMutableArray *female;

@end

@implementation HomeTableTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //nil is for refrence male as object
    _male=[NSMutableArray arrayWithObjects:@"mohamed",@"ahmed",@"mahmoud",nil];
    _female=[NSMutableArray arrayWithObjects:@"alaa",@"esraa",@"hala",nil];
}

#pragma mark - Table view data source

//1- first method important at creating the table
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 2;
}

//2-
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    switch (section) {
        case 0:
//            return  3;
            return [_male count];
            break;
        case 1:
//            return  4;
            return [_female count];
            break;
        default:
            return 0;
            break;
    }
//    return 10;
}

//3-
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    // Configure the cell...
    switch (indexPath.section) {
        case 0:
            cell.textLabel.text=[_male objectAtIndex:indexPath.row];
            break;
        case 1:
            cell.textLabel.text=[_female objectAtIndex:indexPath.row];
            break;
        default:
            break;
    }
    
    
//    cell.textLabel.text=@"mohamed";
    
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
