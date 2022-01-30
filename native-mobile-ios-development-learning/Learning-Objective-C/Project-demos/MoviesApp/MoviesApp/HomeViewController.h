//
//  HomeViewController.h
//  MoviesApp
//
//  Created by mohamed Elnagar on 28/01/2022.
//

#import <UIKit/UIKit.h>
#import "Services/Networking/NetworkManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface HomeViewController : UITableViewController<UITableViewDelegate,UITableViewDataSource,NSURLConnectionDelegate,NSURLConnectionDataDelegate>

@property NSMutableArray *myMovies;
@property NSMutableData *responseData;
@property NetworkManager *networkManager;

@end

NS_ASSUME_NONNULL_END
