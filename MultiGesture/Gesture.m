//
//  Pan.m
//  MultiGesture
//
//  Created by Erica Correa on 3/7/16.
//  Copyright © 2016 Turn to Tech. All rights reserved.
//

#import "Gesture.h"

@implementation Gesture

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    
    //implement gestures
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanGesture:)];
    
    UIPinchGestureRecognizer *pinchGesture = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(handlePinchGesture:)];
    
    UIRotationGestureRecognizer *rotateGesture = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(handleRotateGesture:)];
    
    //add gestures to view
    [self addGestureRecognizer:panGesture];
    [self addGestureRecognizer:pinchGesture];
    [self addGestureRecognizer:rotateGesture];
    
    [self setBackgroundColor:[UIColor colorWithRed:0.54 green:0.90 blue:0.38 alpha:1.0]];
    
    return self;
}

//pan method
- (void)handlePanGesture: (UIPanGestureRecognizer*) panGesture {
    CGPoint touchLocation = [panGesture locationInView:self.superview];
    
    self.center = touchLocation;
}

//pinch method
- (void)handlePinchGesture: (UIPinchGestureRecognizer*) pinchGesture {
    pinchGesture.view.transform = CGAffineTransformScale(pinchGesture.view.transform, pinchGesture.scale, pinchGesture.scale);
    pinchGesture.scale = 1.0;
}

//rotate method
- (void)handleRotateGesture: (UIRotationGestureRecognizer*) rotateGesture {
    self.transform = CGAffineTransformRotate(self.transform, rotateGesture.rotation);
    
    rotateGesture.rotation = 0.0;
}

@end
