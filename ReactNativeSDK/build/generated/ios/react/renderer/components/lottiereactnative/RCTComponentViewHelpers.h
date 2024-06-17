/**
* This code was generated by [react-native-codegen](https://www.npmjs.com/package/react-native-codegen).
*
* Do not edit this file as changes may cause incorrect behavior and will be lost
* once the code is regenerated.
*
* @generated by codegen project: GenerateComponentHObjCpp.js
*/

#import <Foundation/Foundation.h>
#import <React/RCTDefines.h>
#import <React/RCTLog.h>

NS_ASSUME_NONNULL_BEGIN

@protocol RCTLottieAnimationViewViewProtocol <NSObject>
- (void)play:(NSInteger)startFrame endFrame:(NSInteger)endFrame;
- (void)reset;
- (void)pause;
- (void)resume;
@end

RCT_EXTERN inline void RCTLottieAnimationViewHandleCommand(
  id<RCTLottieAnimationViewViewProtocol> componentView,
  NSString const *commandName,
  NSArray const *args)
{
  if ([commandName isEqualToString:@"play"]) {
#if RCT_DEBUG
  if ([args count] != 2) {
    RCTLogError(@"%@ command %@ received %d arguments, expected %d.", @"LottieAnimationView", commandName, (int)[args count], 2);
    return;
  }
#endif

  NSObject *arg0 = args[0];
#if RCT_DEBUG
  if (!RCTValidateTypeOfViewCommandArgument(arg0, [NSNumber class], @"number", @"LottieAnimationView", commandName, @"1st")) {
    return;
  }
#endif
  NSInteger startFrame = [(NSNumber *)arg0 intValue];

NSObject *arg1 = args[1];
#if RCT_DEBUG
  if (!RCTValidateTypeOfViewCommandArgument(arg1, [NSNumber class], @"number", @"LottieAnimationView", commandName, @"2nd")) {
    return;
  }
#endif
  NSInteger endFrame = [(NSNumber *)arg1 intValue];

  [componentView play:startFrame endFrame:endFrame];
  return;
}

if ([commandName isEqualToString:@"reset"]) {
#if RCT_DEBUG
  if ([args count] != 0) {
    RCTLogError(@"%@ command %@ received %d arguments, expected %d.", @"LottieAnimationView", commandName, (int)[args count], 0);
    return;
  }
#endif

  

  [componentView reset];
  return;
}

if ([commandName isEqualToString:@"pause"]) {
#if RCT_DEBUG
  if ([args count] != 0) {
    RCTLogError(@"%@ command %@ received %d arguments, expected %d.", @"LottieAnimationView", commandName, (int)[args count], 0);
    return;
  }
#endif

  

  [componentView pause];
  return;
}

if ([commandName isEqualToString:@"resume"]) {
#if RCT_DEBUG
  if ([args count] != 0) {
    RCTLogError(@"%@ command %@ received %d arguments, expected %d.", @"LottieAnimationView", commandName, (int)[args count], 0);
    return;
  }
#endif

  

  [componentView resume];
  return;
}

#if RCT_DEBUG
  RCTLogError(@"%@ received command %@, which is not a supported command.", @"LottieAnimationView", commandName);
#endif
}

NS_ASSUME_NONNULL_END