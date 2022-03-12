//
//  ViewController.m
//  iOSOCDemo
//
//  Created by baipao on 2022/3/9.
//

#import "ViewController.h"
#import <Masonry.h>
#import "HomeViewController.h"


@interface ViewController ()

@property(strong,nonatomic) UIButton * btn1;
@property(strong,nonatomic) UIButton * btn2;


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addRootLayout];
}

- (void)addRootLayout{
    _btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    
    [_btn1 setTitle:@"Button1" forState:UIControlStateNormal];
    [_btn1 setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    [_btn1 setTitleColor:UIColor.redColor forState:UIControlStateHighlighted];
    [_btn1 setBackgroundColor:UIColor.purpleColor];
    
    [_btn1.layer setMasksToBounds:YES];
    [_btn1.layer setCornerRadius:5.0];
    
    [_btn1 addTarget:self action:@selector(btnEventTouchDown:) forControlEvents:UIControlEventTouchDown];
    [_btn1 addTarget:self action:@selector(btnEventTouchUpInside:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn1];
    
    
    _btn2 = [[UIButton alloc] init];

    [_btn2 setTitle:@"Button2" forState:UIControlStateNormal];
    [_btn2 setTitleColor:UIColor.whiteColor forState:UIControlStateNormal];
    [_btn2 setTitleColor:UIColor.redColor forState:UIControlStateHighlighted];
    [_btn2 setBackgroundColor:UIColor.blueColor];

    [_btn2.layer setMasksToBounds:YES];
    [_btn2.layer setCornerRadius:5.0];
    
//    [_btn2 addTarget:self action:@selector(btnEventTouchDown:) forControlEvents:UIControlEventTouchDown];
//    [_btn2 addTarget:self action:@selector(btnEventTouchUpInside:) forControlEvents:UIControlEventTouchUpInside];
   
    [self.view addSubview:_btn2];
    
    [_btn1 mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(self.mas_topLayoutGuide).offset(10);
        make.left.equalTo(self.view).with.offset(20);
        make.right.equalTo(self.view).with.offset(-20);
        make.height.mas_equalTo(50);
        
        
    }];
    
    [_btn2 mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(_btn1.mas_bottom).with.offset(50);
        make.left.equalTo(self.view).with.offset(20);
        make.right.equalTo(self.view).with.offset(-20);
        make.height.mas_equalTo(50);


    }];
}


- (void)btnEventTouchDown:(UIButton*) sender{
    sender.backgroundColor = UIColor.grayColor;
    
}
- (void)btnEventTouchUpInside:(UIButton*) sender{
    sender.backgroundColor = UIColor.purpleColor;
    
    
    HomeViewController* hv =  [[HomeViewController alloc] init];
    //    HomeViewController* hv =  [[HomeViewController alloc] initWithNibName:@"HomeViewController" bundle:nil];
    [self.navigationController pushViewController:hv animated:YES];
    
    NSLog(@"--%@",hv);
    
    
    
}


@end
