//
//  ViewController.m
//  aurioTouch
//
//  Created by PFaucon on 4/17/15.
//
//

#import "ViewController.h"
#import "EAGLView.h"

@interface ViewController ()
@end

@implementation ViewController

NSTimer* mainTimer;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self startCheckingValue];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self TogglePlay];
    [textField resignFirstResponder];
    return YES;
}


- (IBAction)PlayButtonPressed:(id)sender {
    [self TogglePlay];
}

- (void)TogglePlay {
    if ([_glView ToggleMute:[[_OutFreqField text] doubleValue]]) {
        // from http://stackoverflow.com/questions/4954608/change-text-of-button-and-disable-button-in-ios
        [_PlayButton setTitle:@"Play" forState:UIControlStateNormal];
    }
    else
        [_PlayButton setTitle:@"Mute" forState:UIControlStateNormal];
    
}


// stolen from http://stackoverflow.com/questions/11636461/continuously-check-for-data-method-ios
-(void)startCheckingValue
{
    mainTimer = [NSTimer timerWithTimeInterval:.1 target:self selector:@selector(checkValue:) userInfo:nil repeats:YES];
    [[NSRunLoop mainRunLoop] addTimer:mainTimer forMode:NSDefaultRunLoopMode];
}

-(void)checkValue:(NSTimer *)mainTimer
{
    _InFreqLabel.text = [_glView GetInput];
}

@end
