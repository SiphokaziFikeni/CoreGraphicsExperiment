//
//  DrawViewCircle.m
//  ShapesDemo
//
//  Created by Siphokazi Fikeni on 5/21/19.
//  Copyright © 2019 Siphokazi Fikeni. All rights reserved.
//

#import "DrawViewCircle.h"

@implementation DrawViewCircle

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef contextReference = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(contextReference, 4);
    CGContextSetStrokeColorWithColor(contextReference, [UIColor purpleColor].CGColor);
    
    CGRect rectangle = CGRectMake(60, 170, 200, 80);
    CGContextAddEllipseInRect(contextReference, rectangle);
    
    CGContextStrokePath(contextReference);
}

@end
