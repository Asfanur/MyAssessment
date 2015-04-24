//
//  CustomButton.m
//  MyAssessment
//
//  Created by Asfanur Arafin on 24/04/2015.
//  Copyright (c) 2015 Asfanur Arafin. All rights reserved.
//


#import "CustomButton.h"

@implementation CustomButton

- (void)setHighlighted:(BOOL)highlighted
{
    [self setNeedsDisplay];
    [super setHighlighted:highlighted];
}

 - (void)drawRect:(CGRect)rect {
     // General Declarations
     
     CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
     CGContextRef context = UIGraphicsGetCurrentContext();
     
     // Color Declarations
     UIColor *borderColor = [UIColor blueColor];
     UIColor *backgroundColor = [UIColor lightGrayColor];
     // Gradient Declarations
     NSArray *gradientColors = (@[
                                  (id)backgroundColor.CGColor,
                                  (id)backgroundColor.CGColor
                                  ]);
     
     CGGradientRef gradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)(gradientColors), NULL);
     
     NSArray *highlightedGradientColors = (@[
                                             (id)borderColor.CGColor,
                                             (id)borderColor.CGColor
                                             ]);
     
     CGGradientRef highlightedGradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)(highlightedGradientColors), NULL);
     
     UIBezierPath *roundedRectanglePath = [UIBezierPath bezierPathWithRoundedRect: self.bounds cornerRadius: 5];
     // Use the bezier as a clipping path
     [roundedRectanglePath addClip];
     
     // Use one of the two gradients depending on the state of the button
     CGGradientRef background = self.highlighted? highlightedGradient : gradient;
     
     // Draw gradient within the path
     CGContextDrawLinearGradient(context, background, CGPointMake(140, 0), CGPointMake(140, 37), kCGGradientDrawsAfterEndLocation);
     
     // Draw border
     [backgroundColor setStroke];
     roundedRectanglePath.lineWidth = 3;
     [roundedRectanglePath stroke];
     // Cleanup
     CGGradientRelease(gradient);
     CGGradientRelease(highlightedGradient);
     CGColorSpaceRelease(colorSpace);
 }
-(CGSize)intrinsicContentSize {
  CGSize size  = [self.titleLabel.text sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:20]}];
    return CGSizeMake(size.width+30, size.height+2);
}

@end
