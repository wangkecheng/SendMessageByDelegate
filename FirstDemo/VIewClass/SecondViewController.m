//
//  SecondViewController.m
//  FirstDemo
//
//  Created by WARRON on 7/21/16.
//  Copyright © 2016 WARRON. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField2;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.textField2.delegate = self;
    
    
     
}
- (IBAction)btn2Action:(UIButton *)sender {
    
    [self sendMessage];
    
    [self.navigationController popToRootViewControllerAnimated:YES];
}
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    NSString * str = textField.text;
   
    if (str.length > 10) {
        
        [self showAlert:@"只能输入10个字符"];
        
        NSRange range = NSMakeRange(0, 10);
        
        textField.text = [str substringWithRange:range];
    }
    return YES;
}
-(void)sendMessage{
    
    if ([self.delegate respondsToSelector:@selector(getMessage:)]) {
        
        [self.delegate getMessage:self.textField2.text];
    }
    else
        [self showAlert:@"不能获取方法"];
}
-(void)showAlert:(NSString *)str{

    UIAlertController * alertControler = [UIAlertController alertControllerWithTitle:@"你好" message:str  preferredStyle:UIAlertControllerStyleAlert];
    
    [self presentViewController:alertControler animated:YES completion:nil];
    
    [self performSelector:@selector(dismissAlert:) withObject:alertControler afterDelay:0.8];
}
-(void)dismissAlert:(UIAlertController *)alert{
    
    [alert dismissViewControllerAnimated:YES completion:nil];
    
    [self.textField2  becomeFirstResponder];
}
@end
