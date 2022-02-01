//
//  HomeViewController.h
//  MoviesApp
//
//  Created by mohamed Elnagar on 28/01/2022.
//

#import <UIKit/UIKit.h>
#import "Services/Networking/NetworkManager.h"
#import "Model/Movie.h"
#import "DetailsViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface HomeViewController : UITableViewController<UITableViewDelegate,UITableViewDataSource,NSURLConnectionDelegate,NSURLConnectionDataDelegate>

//for inheret details obj

@property NSMutableArray *myMovies;
@property NSMutableData *responseData;
@property NetworkManager *networkManager;

@end

NS_ASSUME_NONNULL_END
