//
//  ViewController.h
//  aurioTouch
//
//  Created by PFaucon on 4/17/15.
//
//

#import <UIKit/UIKit.h>

@class EAGLView;

@interface ViewController : UIViewController

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) IBOutlet EAGLView *glView;

@end
