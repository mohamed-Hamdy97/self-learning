
#import <UIKit/UIKit.h>
#import "Model/Movie.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailsViewController : UIViewController

@property (nonatomic, assign) Movie *myMovie;
@property (nonatomic, assign) BOOL isSomethingEnabled;
@property (weak, nonatomic) IBOutlet UIImageView *movieImage;
@property (weak, nonatomic) IBOutlet UILabel *movieTitle;
@property (weak, nonatomic) IBOutlet UILabel *movieReleaseYear;
@property (weak, nonatomic) IBOutlet UILabel *movieRating;
@property (weak, nonatomic) IBOutlet UILabel *movieGenre;


@end



NS_ASSUME_NONNULL_END
