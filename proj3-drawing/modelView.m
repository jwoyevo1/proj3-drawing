//
//  modelView.m
//  proj3-drawing
//
//  Created by James Woyevodsky on 4/13/21.
//  Copyright © 2021 Binghamton University. All rights reserved.
//

#import "modelView.h"

@implementation modelView
@synthesize model_x, model_y;
@synthesize num_moves;


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    NSLog(@"Did a redraw of modelView.");
    CGRect bounds = [self bounds];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    [[UIColor whiteColor] setFill];
    CGContextFillRect(context, bounds);
    
    //Create a random color to fill the screen after click
    CGFloat hue = (arc4random() % 256 / 256.0);
    CGFloat sat = (arc4random() % 128 / 256.0) + 0.5;
    CGFloat brightness = (arc4random() % 128 / 256.0) + 0.5;
    //UIColor *color = [UIColor colorWithHue:hue saturation:sat brightness:brightness alpha:1];
    
    [[UIColor colorWithHue:hue saturation:sat brightness:brightness alpha:1] setFill];
    CGContextFillEllipseInRect(context, CGRectMake(model_x, model_y, 100, 100));
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    for (UITouch *t in touches){
        CGPoint p = [t locationInView:self];
        NSLog(@"Touch at %f %f", p.x, p.y);
        model_x = p.x;
        model_y = p.y;
        [self setNeedsDisplay];
    }
}


@end
