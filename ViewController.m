//
//  ViewController.m
//  notificationView
//
//  Created by Khalid Mohamed on 10/7/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    notification= [[NotificationView alloc]initWithFrame:CGRectMake(0,0,self.view.frame.size.width, self.view.frame.size.height)
                   ];
    notification.backgroundColor =[ UIColor blueColor];
    [self.view addSubview:notification];
 //makes a box
    UISwipeGestureRecognizer *swipeDown = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:
    @selector(swipeDown:)];
    swipeDown.direction=UISwipeGestureRecognizerDirectionDown;
    [self.view addGestureRecognizer:swipeDown];
    
    UISwipeGestureRecognizer *swipeUp = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:
    @selector(swipeUp:)];
    swipeUp.direction=UISwipeGestureRecognizerDirectionUp;
    [self.view addGestureRecognizer:swipeUp];
    
   
    
    //UISwipeGestureRecognizer *swipeDown = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:
   // @selector(swipeDown:)]; forControlEvents:
    //swipeDown.direction=UISwipeGestureRecognizerDirectionDown;
   //[notifications addGestureRecognizer:swipeDown];
    
    //[UIView animateWithDuration:0.5 animations:^{
        //notifications.center=CGPointMake(150,150);}];

//animation
}

-(void) swipeDown:(UISwipeGestureRecognizer *) recognizer {
    
    [UIView animateWithDuration:2.0 animations:^{
          // self.notifications.center= CGPointMake(self.view.center.x, self.view.frame.size.height);
        [notification setCenter:CGPointMake(self.view.bounds.size.width/2,self.view.frame.size.height/2)];
    }];
   
}

-(void) swipeUp:(UISwipeGestureRecognizer *) sender {
    
    [UIView animateWithDuration:2.0 animations:^{
    [notification setCenter:CGPointMake(self.view.bounds.size.width/2,-notification.frame.size.height/2)];
    }];
    
}
- (void)didReceiveMemoryWarning {
[super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

};


    @end


