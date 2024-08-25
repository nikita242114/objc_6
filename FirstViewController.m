#import "FirstViewController.h"
#import "Robot.h"

@interface FirstViewController ()

@property (weak, nonatomic) IBOutlet UITextField *xTextField;
@property (weak, nonatomic) IBOutlet UITextField *yTextField;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation FirstViewController

- (IBAction)saveToUserDefaultsButtonPressed:(id)sender {
    NSInteger x = [self.xTextField.text integerValue];
    NSInteger y = [self.yTextField.text integerValue];
    NSString *name = self.nameTextField.text;
    
    Robot *robot = [[Robot alloc] initWithX:x y:y name:name];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSData *robotData = [NSKeyedArchiver archivedDataWithRootObject:robot];
    [defaults setObject:robotData forKey:@"savedRobot"];
}

@end