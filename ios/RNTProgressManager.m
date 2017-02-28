#import "RNTProgressManager.h"
#import "SVProgressHUD.h"

@implementation RNTProgressManager

RCT_EXPORT_MODULE();

//- (dispatch_queue_t)methodQueue
//{
//  return dispatch_queue_create("com.faalsh", DISPATCH_QUEUE_SERIAL);
//}

RCT_EXPORT_METHOD(show)
{
  [SVProgressHUD show];
  
}

RCT_EXPORT_METHOD(dismiss)
{
  dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
      [SVProgressHUD dismiss];
    });
  });
  
}

RCT_EXPORT_METHOD(showWithStatus:(NSString*)status)
{
  [SVProgressHUD showWithStatus:status];
}

RCT_EXPORT_METHOD(showInfoWithStatus:(NSString*)status)
{
  [SVProgressHUD showInfoWithStatus:status];
}

RCT_EXPORT_METHOD(showSuccessWithStatus:(NSString*)status)
{
  [SVProgressHUD showSuccessWithStatus:status];
}

RCT_EXPORT_METHOD(showErrorWithStatus:(NSString*)status)
{
  [SVProgressHUD showErrorWithStatus:status];
}

RCT_EXPORT_METHOD(setRingRadius:(CGFloat) radius)
{
  [SVProgressHUD setRingRadius:radius];
}

RCT_EXPORT_METHOD(setRingThickness:(CGFloat) width)
{
  [SVProgressHUD setRingThickness:width];
}

RCT_EXPORT_METHOD(setRingNoTextRadius:(CGFloat) radius)
{
  [SVProgressHUD setRingNoTextRadius:radius];
}

RCT_EXPORT_METHOD(setCornerRadius:(CGFloat) radius)
{
  [SVProgressHUD setCornerRadius:radius];
}

RCT_EXPORT_METHOD(setForegroundColor:(UIColor *)color)
{
  [SVProgressHUD setForegroundColor:color];
}

RCT_EXPORT_METHOD(setBackgroundColor:(UIColor *)color)
{
  [SVProgressHUD setBackgroundColor:color];
}

RCT_EXPORT_METHOD(setBackgroundLayerColor:(UIColor *)color)
{
  [SVProgressHUD setBackgroundLayerColor:color];
}

@end
