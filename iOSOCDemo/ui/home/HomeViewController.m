//
//  HomeViewController.m
//  iOSOCDemo
//
//  Created by baipao on 2022/3/11.
//

#import "HomeViewController.h"

@interface HomeViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btn;
@property (weak, nonatomic) IBOutlet UIButton *btn1;


@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"xib page";
    self.navigationItem.backButtonTitle = @"返回";
}
- (IBAction)btnOnClicked:(id)sender {
    
    NSLog(@"btnOnClicked > %@",_btn);
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
