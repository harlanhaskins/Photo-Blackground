#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

%hook PUPhotoBrowserController

- (UIColor*) photoBackgroundColor {
  return [UIColor blackColor];
}

%end
