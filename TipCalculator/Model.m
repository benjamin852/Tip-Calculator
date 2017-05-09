#import "Model.h"

@implementation Model
-(NSString*) calculateTip: (NSString*)billAmount withTip:(NSString*)tipPercentage {
    self.calculatedTipAmount = [billAmount floatValue] * [tipPercentage floatValue];
    NSString *returnString;
    returnString = [NSString stringWithFormat:@"%f", self.calculatedTipAmount/100];
    return returnString;
}
@end

