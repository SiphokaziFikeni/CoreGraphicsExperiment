//
//  DrawView3.m
//  ShapesDemo
//
//  Created by Siphokazi Fikeni on 5/21/19.
//  Copyright © 2019 Siphokazi Fikeni. All rights reserved.
//

#import "DrawView3.h"

@implementation DrawView3

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef contextReference = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(contextReference, 3);
    CGContextSetStrokeColorWithColor(contextReference, [UIColor orangeColor].CGColor);
    
    CGContextMoveToPoint(contextReference, 150, 150);
    CGContextAddLineToPoint(contextReference, 250, 250);
    CGContextAddLineToPoint(contextReference, 150, 350);
    CGContextAddLineToPoint(contextReference, 50, 250);
    CGContextAddLineToPoint(contextReference, 150, 150);
    
    CGContextFillPath(contextReference);
    
    CGContextStrokePath(contextReference);
}


@end
