
#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *mirrorView = [[UIView alloc] initWithFrame:self.objHamburgerSpinView.frame];
    [self.view addSubview:mirrorView];
    [mirrorView.layer setBorderColor:[UIColor redColor].CGColor];
    [mirrorView.layer setBorderWidth:2.];

    [self.objSlider setContinuous:YES];
    self.objHamburgerSpinView.hamburgerLineLength = 30;
    self.objHamburgerSpinView.hamburgerSpacing = 20;
    double diagonalSquare = pow((double)self.objHamburgerSpinView.hamburgerLineLength,2.) + pow((double)self.objHamburgerSpinView.hamburgerSpacing,2.);
    diagonalSquare = sqrt(diagonalSquare);
    self.objHamburgerSpinView.incrementalLength = diagonalSquare - (double) self.objHamburgerSpinView.hamburgerLineLength;
    self.objHamburgerSpinView.normalizedValue = 0.;
    self.objHamburgerSpinView.angleToBeRotated = atan((double)self.objHamburgerSpinView.hamburgerSpacing/(double)self.objHamburgerSpinView.hamburgerLineLength);
    self.objHamburgerSpinView.lengthToBeShrunk = 1/(2*cos(self.objHamburgerSpinView.angleToBeRotated));
    self.objHamburgerSpinView.lengthToBeShrunk = 1. - self.objHamburgerSpinView.lengthToBeShrunk ;
    [self.objHamburgerSpinView.layer setBorderColor:[UIColor blackColor].CGColor];
    [self.objHamburgerSpinView.layer setBorderWidth:2.];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onSliderChanged:(id)sender {
    NSLog(@"%f",[(UISlider*)sender value]);
    self.objHamburgerSpinView.normalizedValue = [(UISlider*)sender value];
    [self.objHamburgerSpinView setNeedsDisplay];
}

- (IBAction)buttonAction:(id)sender {
    for (float i =.1 ; i<=1; i=i+.1) {
        self.objHamburgerSpinView.normalizedValue = i;
        [self.objHamburgerSpinView setNeedsDisplay];

    }
}
@end
