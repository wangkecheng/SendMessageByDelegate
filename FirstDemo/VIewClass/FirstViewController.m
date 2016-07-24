//
//  FirstViewController.m
//  FirstDemo
//
//  Created by WARRON on 7/21/16.
//  Copyright © 2016 WARRON. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
@interface FirstViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label1;

@property (weak, nonatomic) IBOutlet UITextField *textFiled1;

@end

@implementation FirstViewController

- (void)viewDidLoad {
   
    [super viewDidLoad];
    
}
- (IBAction)btn1Action:(UIButton *)sender {
    
    self.label1.text = @"改变前的值";
    
    SecondViewController * second = [[SecondViewController alloc]init];
    
    second.delegate  = self;
    
    [self.navigationController pushViewController:second animated:YES];    
}
-(void)getMessage:(NSString *)message{
    
    self.textFiled1.text = message;
}
@end
