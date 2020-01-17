/**
 * Copyright (c) 2015-present, Facebook, Inc.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import "AppDelegate.h"

#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>

@implementation AppDelegate

// fix error
//node_modules/react-native/React/Base/RCTModuleMethod.mm
//static BOOL RCTParseUnused(const char **input)
//{
//  return RCTReadString(input, "__attribute__((unused))") ||
//           RCTReadString(input, "__attribute__((__unused__))") ||
//           RCTReadString(input, "__unused");
//}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  NSURL *jsCodeLocation;

//  jsCodeLocation = [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index" fallbackResource:nil];
  
//  jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")!
//  jsCodeLocation = [[NSURL alloc] initWithString:@"http://localhost:8081/index.bundle?platform=ios"];
  jsCodeLocation = [[NSURL alloc] initWithString:@"http://10.180.50.196:8081/index.bundle?platform=ios"];
  
  RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsCodeLocation
                                                      moduleName:@"Example"
                                               initialProperties:nil
                                                   launchOptions:launchOptions];
  rootView.backgroundColor = [[UIColor alloc] initWithRed:1.0f green:1.0f blue:1.0f alpha:1];

  self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
  UIViewController *rootViewController = [UIViewController new];
  rootViewController.view = rootView;
  self.window.rootViewController = rootViewController;
  [self.window makeKeyAndVisible];
  return YES;
}

@end
