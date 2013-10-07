//
//  UIApplication+AppDelegate.m
//
//  Created by Pontus Carlsson on 2013-09-30.
//

#import "UIApplication+AppDelegate.h"

@implementation UIApplication (AppDelegate)

+ (AppDelegate *)appDelegate
{
    return (AppDelegate *)[self sharedApplication].delegate;
}

@end
