//
//  NetworkManager.m
//  MoviesApp
//
//  Created by mohamed Elnagar on 28/01/2022.
//

#import <Foundation/Foundation.h>
#import "NetworkManager.h"

@implementation NetworkManager


- (void)getAllMovies:(UIViewController *)delegate{
    NSString *urlStr =@"https://api.themoviedb.org/3/discover/movie?api_key=0d0a81fc94251af23fd209ec07b3594d";
    NSURL *moviesURL = [NSURL URLWithString:urlStr];
    //replace this by session later
    NSURLRequest *request =[NSURLRequest requestWithURL:moviesURL];
    NSURLConnection *connection = [[NSURLConnection alloc]initWithRequest:request delegate:delegate];

    [connection start];
}

@end
