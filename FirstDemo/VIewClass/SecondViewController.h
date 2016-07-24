//
//  SecondViewController.h
//  FirstDemo
//
//  Created by WARRON on 7/21/16.
//  Copyright © 2016 WARRON. All rights reserved.

#import <UIKit/UIKit.h>

@class FirstViewController;

@protocol sendMessage<NSObject>

-(void)getMessage:(NSString *)message;

@end

@interface SecondViewController : UIViewController

@property(nonatomic,weak)id<sendMessage> delegate;

@property (nonatomic,weak)FirstViewController *first;

-(void)sendMessage;
@end
