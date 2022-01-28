//
//  ViewController.m
//  NetworkingDemo
//
//  Created by mohamed Elnagar on 27/01/2022.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)doAsyncAction:(UIButton *)sender {
    //for making sync request that will pause the executionof any evens at screen
    NSString *str =@"https://maktoob.yahoo.com/?p=us";
    NSURL *url = [NSURL URLWithString:str];
    NSString *myData =[[NSString alloc]initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    _myTextView.text=myData;

}

- (IBAction)doSyncAction:(UIButton *)sender {
    //for making async request that will pause the executionof any evens at screen
    //1-
    NSString *str =@"https://maktoob.yahoo.com/?p=us";
    NSURL *url = [NSURL URLWithString:str];
    //2-
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    //3-connection
    NSURLConnection *con= [[NSURLConnection alloc]initWithRequest:request delegate:self ];
    //4-start connection
    [con start];
    //the connectin will start but we can recisve data by the delegate didRecieveData
}

//5
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    printf("recieved data/n");
    //but this will make a problem of loading data on many time so
//    NSString *strData = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
//    _myTextView.text=strData;
    
    //so we will create an array and append all data and after finished by using delegete of finishloadingConnection we will view data
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    //append data here
}
@end
