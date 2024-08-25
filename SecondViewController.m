#import "SecondViewController.h"
#import "Robot.h"

@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet UITextField *xTextField;
@property (weak, nonatomic) IBOutlet UITextField *yTextField;
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation SecondViewController

- (IBAction)saveToFileButtonPressed:(id)sender {
    NSInteger x = [self.xTextField.text integerValue];
    NSInteger y = [self.yTextField.text integerValue];
    NSString *name = self.nameTextField.text;
    
    Robot *robot = [[Robot alloc] initWithX:x y:y name:name];
    
    NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.robot", name]];
    NSData *robotData = [NSKeyedArchiver archivedDataWithRootObject:robot];
    [robotData writeToFile:filePath atomically:YES];
}

@end