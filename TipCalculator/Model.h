
#import <Foundation/Foundation.h>

@interface Model : NSObject
@property (nonatomic) float billProperty;
@property (nonatomic) float tipProperty;
@property (nonatomic) float calculatedTipAmount;

-(NSString*) calculateTip: (NSString*)billAmount withTip:(NSString*)tipPercentage;
@end
