//
//  AFViewController.m
//  iOSOCDemo
//
//  Created by baipao on 2022/3/22.
//

#import "AFViewController.h"
#import <AFNetworking/AFNetworking.h>
#import "Result.h"
#import "Chapters.h"

@interface AFViewController ()

@end

@implementation AFViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //    NSMutableArray
    
    
    
    
}
- (IBAction)onClickedGet:(id)sender {
    AFHTTPSessionManager* manager =  [AFHTTPSessionManager manager];
    [manager GET:@"http://wanandroid.com/wxarticle/chapters/json" parameters:nil headers:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        NSLog(@"progress = %@",downloadProgress);
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        Result* res =   [Result resultWithDict: (NSDictionary*)responseObject];
        NSArray<NSDictionary*> *data = res.data;
        
        if(data&&data.count>0){
            //            NSData *da = [data dataUsingEncoding:NSUTF8StringEncoding];
            //            id list =  [NSJSONSerialization JSONObjectWithData:da options:NSJSONReadingMutableContainers error:nil];
            
            NSDictionary *d = data[1];
//            NSData *jsonData =  [NSJSONSerialization dataWithJSONObject:d options:NSJSONWritingPrettyPrinted error:nil];
//            NSString* jd = [[NSString alloc]initWithData:jsonData encoding:NSUTF8StringEncoding  ];
            Chapters* cha = [Chapters chaptersWithDict:[d mutableCopy]];
            NSLog(@"success = %@",cha);
        }
        
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull failure) {
        NSLog(@"failure = %@",failure);
    }];
    
    
}
- (IBAction)onClikedPost:(id)sender {
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
