//
//  DrawViewRectangle.m
//  ShapesDemo
//
//  Created by Siphokazi Fikeni on 5/21/19.
//  Copyright © 2019 Siphokazi Fikeni. All rights reserved.
//

#import "DrawViewRectangle.h"

@implementation DrawViewRectangle

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef contextReference = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(contextReference, 3);
    CGContextSetStrokeColorWithColor(contextReference, [UIColor brownColor].CGColor);
                                      
    CGRect rectangle = CGRectMake(50, 200, 300, 200);
    CGContextAddRect(contextReference, rectangle);
    
    CGContextStrokePath(contextReference);
    
//    CGContextSetStrokeColorWithColor(contextReference, [UIColor orangeColor].CGColor);
//    CGContextMoveToPoint(contextReference, 50, 100);
//    CGContextAddLineToPoint(contextReference, 250, 300);
//    CGContextAddLineToPoint(contextReference, 100, 450);
//    CGContextAddLineToPoint(contextReference, 50, 100);
//
//    CGContextStrokePath(contextReference);
}


@end
