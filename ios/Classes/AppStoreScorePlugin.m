#import "AppStoreScorePlugin.h"
#import <StoreKit/StoreKit.h>

@implementation AppStoreScorePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"app_store_score"
            binaryMessenger:[registrar messenger]];
  AppStoreScorePlugin* instance = [[AppStoreScorePlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  }
  else if([@"showAppStoreScore" isEqualToString:call.method]){
      [SKStoreReviewController requestReview];
  }
  else {
    result(FlutterMethodNotImplemented);
  }
}

@end
