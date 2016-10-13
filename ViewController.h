//
//  ViewController.h
//  notificationView
//
//  Created by Khalid Mohamed on 10/7/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NotificationView.h"


@interface ViewController : UIViewController
{
    NotificationView *notification;
}

@property (nonatomic,strong) NotificationView  *notifications;

@end

