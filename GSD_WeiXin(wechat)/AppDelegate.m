//
//  AppDelegate.m
//  GSD_WeiXin(wechat)
//
//  Created by aier on 16/2/10.
//  Copyright © 2016年 GSD. All rights reserved.
//

#import "AppDelegate.h"

#import "SDAppFrameTabBarController.h"

#import "UIView+SDAutoLayout.h"

#import "SDHomeTableViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [SDAppFrameTabBarController new];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    [self setupNavBar];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    
    UITabBarController *tabVC = (UITabBarController *)self.window.rootViewController;
    UINavigationController *nav = tabVC.selectedViewController;
    UIViewController *childVC = [nav.childViewControllers lastObject];
    if ([childVC isKindOfClass:[SDHomeTableViewController class]]) {
        SDHomeTableViewController *homeVC = (SDHomeTableViewController *)childVC;
        [homeVC startTableViewAnimationWithHidden:NO];
        //        if (tabVC.tabBar.bottom != [UIScreen mainScreen].bounds.size.height) {
        //        tabVC.tabBar.bottom = [UIScreen mainScreen].bounds.size.height;
        //        }
    }
    
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
//    UITabBarController *tabVC = (UITabBarController *)self.window.rootViewController;
//    UINavigationController *nav = tabVC.selectedViewController;
//    UIViewController *childVC = [nav.childViewControllers lastObject];
//    if ([childVC isKindOfClass:[SDHomeTableViewController class]]) {
//        SDHomeTableViewController *homeVC = (SDHomeTableViewController *)childVC;
//        [homeVC startTableViewAnimationWithHidden:NO];
////        if (tabVC.tabBar.bottom != [UIScreen mainScreen].bounds.size.height) {
//            tabVC.tabBar.bottom = [UIScreen mainScreen].bounds.size.height;
////        }
//    }
    
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark - setup

- (void)setupNavBar
{
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    
    UINavigationBar *bar = [UINavigationBar appearance];
    CGFloat rgb = 0.1;
    bar.barTintColor = [UIColor colorWithRed:rgb green:rgb blue:rgb alpha:0.9];
    bar.tintColor = [UIColor whiteColor];
    bar.titleTextAttributes = @{NSForegroundColorAttributeName : [UIColor whiteColor]};
}

@end
