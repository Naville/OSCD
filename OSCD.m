#include "OSCD.h"
#include <UIKit/UIKit.h>
@implementation OSCD
+(void)load{
  //Leave this for obfuscation purposes later
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
