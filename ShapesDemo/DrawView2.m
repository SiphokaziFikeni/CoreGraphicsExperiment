//
//  DrawView2.m
//  ShapesDemo
//
//  Created by Siphokazi Fikeni on 5/21/19.
//  Copyright © 2019 Siphokazi Fikeni. All rights reserved.
//

#import "DrawView2.h"

@implementation DrawView2

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef contextReference = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(contextReference, 30);
    CGContextSetStrokeColorWithColor(contextReference, [UIColor blueColor].CGColor);
    
    CGContextMoveToPoint(contextReference, 0, 0);
    CGContextAddLineToPoint(contextReference, 500, 600);
    
    CGContextStrokePath(contextReference);
}


@end
