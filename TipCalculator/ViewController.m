
#import "ViewController.h"
#import "Model.h"
#import "DetailViewController.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *tipPercentage;
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;

@property (nonatomic) Model *model;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.model = [[Model alloc] init];
    self.billAmountTextField.delegate =self;
    self.tipPercentage.delegate = self;
//    CGRect bounds = self.view.bounds;
//    CGFloat newY = bounds.origin.y + 200;
//    CGRect newBounds = CGRectMake(bounds.origin.x, newY, bounds.size.width, bounds.size.height);
//    self.view.bounds = newBounds;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"Segue"]) {
        DetailViewController *dvc = [segue destinationViewController];
        NSString *result = [self.model calculateTip:self.billAmountTextField.text withTip:self.tipPercentage.text];
        dvc.word = result;
    }
}



- (BOOL) textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    NSLog(@"%d: %s", __LINE__, __PRETTY_FUNCTION__);
    return YES;
}
@end

