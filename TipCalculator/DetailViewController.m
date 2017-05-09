

#import "DetailViewController.h"
#import "Model.h"
@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
 
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tipLabel.text = self.word;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
