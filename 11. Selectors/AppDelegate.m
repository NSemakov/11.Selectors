//
//  AppDelegate.m
//  11. Selectors
//
//  Created by Admin on 18.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "AppDelegate.h"
#import <UIKit/UIKit.h>
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //call selectors with more than 2 objects
    SEL selector1=@selector(makeSomeTea:withSugar:andWater:);
    NSMethodSignature* signature=[AppDelegate instanceMethodSignatureForSelector:selector1];
    NSInvocation* invocation=[NSInvocation invocationWithMethodSignature:signature];
    [invocation setTarget:self];
    [invocation setSelector:selector1];
    NSString* tea=@"Ceylon";
    CGFloat spoon=2.5f;
    CGFloat volume=0.7f;
    CGFloat *p1=&spoon;
    CGFloat *p2=&volume;
    
    [invocation setArgument:&tea atIndex:2];
    [invocation setArgument:p1 atIndex:3];
    [invocation setArgument:p2 atIndex:4];
    [invocation invoke];
    return YES;
}

-(void) makeSomeTea:(NSString*) tea withSugar:(CGFloat) spoon andWater:(CGFloat) volume {
    NSLog(@"You want %1.3f cup of %@ tea with %1.1f spoon of sugar",volume,tea,spoon);
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
