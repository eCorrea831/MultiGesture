//
//  main.m
//  MultiGesture
//
//  Created by Erica Correa on 3/7/16.
//  Copyright © 2016 Turn to Tech. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Gesture.h"

@interface MyView : UIView

@end

@implementation MyView

@end

@interface TestViewAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
}

@end

@implementation TestViewAppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
    //create window and main view
    window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    MyView *view = [[MyView alloc] initWithFrame:[window frame]];
    [view setBackgroundColor:[UIColor whiteColor]];
    
    UIViewController *viewController = [[UIViewController alloc]init];
    
    //create title label
    UILabel *label = [[UILabel alloc] initWithFrame:(CGRectMake(50, 20, 300, 100))];
    [label setTextColor:[UIColor blackColor]];
    [label setText:@"Pan, Pinch, & Rotate!"];
    [label setBackgroundColor:[UIColor clearColor]];
    [label setTextAlignment: NSTextAlignmentCenter];
    [label setFont:[UIFont fontWithName: @"Helvetica-Bold" size: 15.0f]];
    
    //create gestureSquare subView
    Gesture *gestureSquare = [[Gesture alloc] initWithFrame:(CGRectMake(100, 350, 150, 150))];
    
    //add subView
    [view addSubview:label];
    [view addSubview:gestureSquare];
         
    viewController.view = view;
    [window setRootViewController:viewController];
    [window makeKeyAndVisible];
}

@end
         
int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([TestViewAppDelegate class]));
    }
}