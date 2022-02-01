//
//  DetailsViewController.m
//  MoviesApp
//
//  Created by mohamed Elnagar on 28/01/2022.
//

#import "DetailsViewController.h"
#import <SDWebImage/SDWebImage.h>

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.movieTitle.text = @"Spider-Man: No Way Home";
    self.movieRating.text =@"Rate:  8.4";
    self.movieReleaseYear.text=@"Realese Date : 2021-12-15";
//    NSLog(@"Error while saving----: %@", _myMovie);
//    [self.movieImage sd_setImageWithURL:self.myMovie.image placeholderImage:@"placeholder-image"];
    
    /* assign image */
    NSString *imageURl=@"https://image.tmdb.org/t/p/w500//1g0dhYtq4irTY1GPXvft6k4YLjm.jpg";
    //concatentae with https://image.tmdb.org/t/p/w500
    NSString *urlImage = [NSURL URLWithString:imageURl];
    
    [_movieImage sd_setImageWithURL:urlImage placeholderImage:[UIImage imageNamed:@"placeholder-image.png"]];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
