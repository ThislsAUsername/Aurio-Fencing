//
//  ViewController.h
//  aurioTouch
//
//  Created by PFaucon on 4/17/15.
//
//

#import <UIKit/UIKit.h>

@class EAGLView;

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (nonatomic, strong) UIWindow *window;
@property (nonatomic, strong) IBOutlet EAGLView *glView;
@property (weak, nonatomic) IBOutlet UILabel *InFreqLabel;
@property (weak, nonatomic) IBOutlet UITextField *OutFreqField;
@property (weak, nonatomic) IBOutlet UIButton *PlayButton;
- (IBAction)PlayButtonPressed:(id)sender;

@end
