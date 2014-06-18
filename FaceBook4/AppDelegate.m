//
//  AppDelegate.m
//  FaceBook4
//
//  Created by Tyler Miller on 6/10/14.
//  Copyright (c) 2014 Tyler Miller. All rights reserved.
//

#import "AppDelegate.h"
#import "LoginViewController.h"
#import "PostViewController.h"
#import "RequestViewController.h"
#import "MessengerViewController.h"
#import "NotiViewController.h"
#import "MoreViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    //Create View Controllers
    LoginViewController *loginViewController = [[LoginViewController alloc] init];
    UINavigationController *loginNavigationController = [[UINavigationController alloc] initWithRootViewController:loginViewController];
    
    PostViewController *postViewController = [[PostViewController alloc] init];
    UINavigationController *postNavigationController = [[UINavigationController alloc] initWithRootViewController:postViewController];
    
    RequestViewController *requestViewController = [[RequestViewController alloc] init];
    UINavigationController *requestNavigationController = [[UINavigationController alloc] initWithRootViewController:requestViewController];
    
    MessengerViewController *messengerViewController = [[MessengerViewController alloc] init];
    UINavigationController *messengerNavigationController = [[UINavigationController alloc] initWithRootViewController:messengerViewController];
    
    NotiViewController *notiViewController = [[NotiViewController alloc] init];
    UINavigationController *notiNavigationController = [[UINavigationController alloc] initWithRootViewController:notiViewController];
    
    MoreViewController *moreViewController = [[MoreViewController alloc] init];
    UINavigationController *moreNavigationController = [[UINavigationController alloc] initWithRootViewController:moreViewController];
    
    //Configure the Tab Bar Controller
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    tabBarController.viewControllers = @[postNavigationController, requestNavigationController, messengerNavigationController, notiNavigationController, moreNavigationController];
    
    //Configure Tab Bar Titles
    postNavigationController.tabBarItem.title = @"Feed";
    postNavigationController.tabBarItem.image = [UIImage imageNamed:@"feed"];
    
    requestNavigationController.tabBarItem.title = @"Requests";
    requestNavigationController.tabBarItem.image = [UIImage imageNamed:@"request"];
    
    messengerNavigationController.tabBarItem.title = @"Messenger";
    messengerNavigationController.tabBarItem.image = [UIImage imageNamed:@"messenger"];
    
    notiNavigationController.tabBarItem.title = @"Notifications";
    notiNavigationController.tabBarItem.image = [UIImage imageNamed:@"noti"];
    
    moreNavigationController.tabBarItem.title = @"More";
    moreNavigationController.tabBarItem.image = [UIImage imageNamed:@"more"];
    
    //Set RootViewController
    self.window.rootViewController = loginViewController;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
