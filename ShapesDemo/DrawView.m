//
//  DrawView.m
//  ShapesDemo
//
//  Created by Siphokazi Fikeni on 5/21/19.
//  Copyright © 2019 Siphokazi Fikeni. All rights reserved.
//

#import "DrawView.h"

@implementation DrawView
/*
- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        //Initialization code
    }
    return self;
}
*/

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef contextReference = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(contextReference, 50);
    
    CGColorSpaceRef colorSpaceReference = CGColorSpaceCreateDeviceRGB();
    CGFloat components[] = {1.0, 0.0, 0.0, 1.0};
    CGColorRef colorReference = CGColorCreate(colorSpaceReference, components);
    
    CGContextSetStrokeColorWithColor(contextReference, colorReference);
    
    CGContextMoveToPoint(contextReference, 30, 40);
    CGContextAddLineToPoint(contextReference, 300, 450);
    
    CGContextStrokePath(contextReference);
    CGColorSpaceRelease(colorSpaceReference);
    CGColorRelease(colorReference);
}


@end
