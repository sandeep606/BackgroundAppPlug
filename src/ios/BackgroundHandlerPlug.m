/********* BackgroundHandlerPlug.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface BackgroundHandlerPlug : CDVPlugin {
  // Member variables go here.
}

- (void)runApplicationInBG:(CDVInvokedUrlCommand*)command;
@end

@implementation BackgroundHandlerPlug

- (void)runApplicationInBG:(CDVInvokedUrlCommand*)command
{

    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"Success occured"];
    
    UIBackgroundTaskIdentifier bgTask = UIBackgroundTaskInvalid;
    bgTask = [[UIApplication sharedApplication]
         beginBackgroundTaskWithExpirationHandler:^{
              // [[UIApplication sharedApplication] endBackgroundTask:bgTask];
    }];
   
   [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

}

@end
