
#import "HamburgerSpinView.h"

@interface HamburgerSpinView ()
{
    NSInteger count;
}

@end

@implementation HamburgerSpinView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [super drawRect:rect];
    UIBezierPath *path1,*path2,*path3;
    
         path1 = [UIBezierPath bezierPath];
        [path1 moveToPoint:CGPointMake((((rect.size.width - self.hamburgerLineLength)/2)) + (self.lengthToBeShrunk*_normalizedValue*self.hamburgerLineLength), rect.size.height/2 - self.hamburgerSpacing)];
        [path1 addLineToPoint:CGPointMake((((rect.size.width - self.hamburgerLineLength)/2)) +self.hamburgerLineLength +_normalizedValue*self.incrementalLength, rect.size.height/2 - self.hamburgerSpacing)];
        path1.lineWidth = 2;
        [[UIColor redColor]setStroke];

        path2 = [UIBezierPath bezierPath];
        [path2 moveToPoint:CGPointMake((rect.size.width - self.hamburgerLineLength)/2, rect.size.height/2)];
        [path2 addLineToPoint:CGPointMake(((rect.size.width - self.hamburgerLineLength)/2) +self.hamburgerLineLength, rect.size.height/2)];
        path2.lineWidth = 2;
        [[UIColor redColor]setStroke];
        [path2 stroke];

        path3 = [UIBezierPath bezierPath];
        [path3 moveToPoint:CGPointMake((((rect.size.width - self.hamburgerLineLength)/2)) + (self.lengthToBeShrunk*_normalizedValue*self.hamburgerLineLength), rect.size.height/2 + self.hamburgerSpacing)];
        [path3 addLineToPoint:CGPointMake((((rect.size.width - self.hamburgerLineLength)/2)) +self.hamburgerLineLength+_normalizedValue*self.incrementalLength, rect.size.height/2 + self.hamburgerSpacing)];
        path3.lineWidth = 2;
        [[UIColor redColor]setStroke];

    
        [path1 applyTransform:CGAffineTransformMakeTranslation(-((rect.size.width - self.hamburgerLineLength)/2),- rect.size.height/2 + self.hamburgerSpacing)];
        [path1 applyTransform:CGAffineTransformMakeRotation((_angleToBeRotated)*_normalizedValue)];
        [path1 applyTransform:CGAffineTransformMakeTranslation(((rect.size.width - self.hamburgerLineLength)/2), rect.size.height/2 - self.hamburgerSpacing)];
        [path1 stroke];

        
        [path3 applyTransform:CGAffineTransformMakeTranslation(-((rect.size.width - self.hamburgerLineLength)/2),- rect.size.height/2 - self.hamburgerSpacing)];
        [path3 applyTransform:CGAffineTransformMakeRotation(-(_angleToBeRotated)*_normalizedValue)];
        [path3 applyTransform:CGAffineTransformMakeTranslation(((rect.size.width - self.hamburgerLineLength)/2), rect.size.height/2 + self.hamburgerSpacing)];
        [path3 stroke];

    [self setTransform:CGAffineTransformMakeRotation((M_PI*_normalizedValue))];

}


@end
