#import <Foundation/Foundation.h>
@interface OSCD : NSObject
+(void)load;
+(BOOL)isMirrored;
+(BOOL)isAVAudioSessionCaptured;
@end
