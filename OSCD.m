#include "OSCD.h"
#include <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
@implementation OSCD
+(void)load{
  //Leave this for obfuscation purposes later
}
+(BOOL)isAVAudioSessionCaptured{
  AVAudioSession *shared=[AVAudioSession sharedInstance];
  for(AVAudioSessionPortDescription* desc in [shared currentRoute].outputs){
    if([desc.portType isEqualToString:AVAudioSessionPortBuiltInReceiver]==NO && [desc.portType isEqualToString:AVAudioSessionPortBuiltInSpeaker]==NO){
      return YES;
    }
  }
  return NO;
}
+(bool)isMirrored{
  for(UIScreen* screen in [UIScreen screens]){
    if(screen.mirroredScreen!=nil){
      return YES;
    }
  }
  return NO;
}
@end
