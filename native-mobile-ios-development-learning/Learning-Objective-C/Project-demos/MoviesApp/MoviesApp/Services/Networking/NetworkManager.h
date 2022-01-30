//
//  NetworkManager.h
//  MoviesApp
//
//  Created by mohamed Elnagar on 28/01/2022.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NetworkManager : NSObject

-(void) getAllMovies: (UIViewController*) delegate;

@end

NS_ASSUME_NONNULL_END
