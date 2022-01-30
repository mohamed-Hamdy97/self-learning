//
//  Movie.h
//  MoviesApp
//
//  Created by mohamed Elnagar on 28/01/2022.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Movie : NSObject{
    NSString *title;
    NSString *image;
    double *rating;
    int *releaseYear;
    NSArray *genre;
}



@end

NS_ASSUME_NONNULL_END
