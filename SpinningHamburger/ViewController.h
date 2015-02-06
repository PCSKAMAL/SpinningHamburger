
#import <UIKit/UIKit.h>
#import  "HamburgerSpinView.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet HamburgerSpinView *objHamburgerSpinView;
@property (weak, nonatomic) IBOutlet UISlider *objSlider;
- (IBAction)onSliderChanged:(id)sender;
- (IBAction)buttonAction:(id)sender;


@end

