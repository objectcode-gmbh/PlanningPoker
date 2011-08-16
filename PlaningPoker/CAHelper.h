//
//  CAHelper.h
//  PlaningPoker
//
//  Created by Junglas Bodo on 15.08.11.
//  Copyright 2011 ObjectCode GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

CAAnimation *CAHFlipResizeAnimation(NSTimeInterval duration, CGFloat yRotationStart, CGFloat yRotationEnd, CGFloat zRotationStart, CGFloat zRotationEnd, CGRect beginRect, CGRect endRect);
CAAnimation *CAHResizeAnimation(NSTimeInterval duration, CGRect beginRect, CGRect endRect);