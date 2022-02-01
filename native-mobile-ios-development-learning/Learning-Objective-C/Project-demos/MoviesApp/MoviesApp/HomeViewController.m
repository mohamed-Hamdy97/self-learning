

#import "HomeViewController.h"
#import <SDWebImage/SDWebImage.h>
#import "Model/Movie.h"
#import "DetailsViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _networkManager=[NetworkManager new];
    [_networkManager getAllMovies:self];
    
}

/*connection methods*/

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    _responseData=[[NSMutableData alloc] init];
    printf("will recive data/n");
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    printf("connection/n");
    [self.responseData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    printf("network finished/n");
    
//convert data to json
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:self.responseData options:NSJSONReadingAllowFragments error:nil];
    _myMovies = [json objectForKey:@"results"];
    [self.tableView reloadData];
    
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    NSLog(@"Error while saving----: %@", error);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _myMovies.count;
}

//buiding the cell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //cell identifier
    NSString *cellIdentifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    if(cell==nil){
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier ];
    }
    // Configure the cell...
    NSDictionary *currentDic = _myMovies[indexPath.row];
    
    cell.textLabel.text=[currentDic objectForKey:@"title"];
    
    /* assign image */
    NSString *imagePath = [currentDic objectForKey:@"poster_path"];
    //concatentae with https://image.tmdb.org/t/p/w500
    NSString *imageURL = [NSString stringWithFormat:@"%@/%@",@"https://image.tmdb.org/t/p/w500",imagePath];
    NSLog(@"image---%@", imageURL);
    
    [cell.imageView sd_setImageWithURL:[NSURL URLWithString:imageURL]placeholderImage:[UIImage imageNamed:@"placeholder-image.png"]];
    cell.imageView.layer.cornerRadius=25;
    //to make image be
    cell.imageView.layer.masksToBounds=true;
    
    return cell;
}

//height for the row of table view
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
     NSLog(@"Source Controller = %@", [segue sourceViewController]);
     NSLog(@"Destination Controller = %@", [segue destinationViewController]);
     NSLog(@"Segue Identifier = %@", [segue identifier]);
     NSDictionary *selectedCell = _myMovies[self.tableView.indexPathForSelectedRow.row];
    Movie *movie = [Movie new];
    movie.title =[selectedCell objectForKey:@"title"];
    
    /* assign image */
    NSString *imagePath = [selectedCell objectForKey:@"poster_path"];
    //concatentae with https://image.tmdb.org/t/p/w500
    NSString *imageURL = [NSString stringWithFormat:@"%@/%@",@"https://image.tmdb.org/t/p/w500",imagePath];
    
    movie.image = imageURL;
    movie.rating =[[selectedCell objectForKey:@"vote_average"] doubleValue];
    movie.releasedate =[selectedCell objectForKey:@"release_date"];
    //genre will array of ids so we will search on api about genreand filter.
    movie.genre=[selectedCell objectForKey:@"genre_ids"];
    
    //assign the movie at the home to the movie of details
    // but the problem cann't accessing the movie of details
    // segue.destinationViewController.movie=movie
    //solution is casting to the view of details
    
    //we should inherite the detaiols first to can access myMovie.
    ((DetailsViewController*)segue.destinationViewController).myMovie = movie;

    DetailsViewController *detObj = [DetailsViewController new];
    detObj.isSomethingEnabled=YES;
    
    if([segue.identifier isEqualToString:@"mySegue"]){
        DetailsViewController *controller=(DetailsViewController*)segue.destinationViewController;
        controller.isSomethingEnabled = YES;
         }
    
}

@end
