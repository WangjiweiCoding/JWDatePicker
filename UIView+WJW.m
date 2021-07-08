//
//  UIView+kk.h
//  JWDatePicker
//
//  Created by 王记伟 on 2021/7/8.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (WJW)
- (void)setSize:(CGSize)size;
{
    CGPoint origin = self.frame.origin;
    self.frame = CGRectMake(origin.x, origin.y, size.width, size.height);
}

- (CGSize)size;
{
    return self.frame.size;
}

- (CGFloat)left;
{
    return CGRectGetMinX(self.frame);
}

- (void)setLeft:(CGFloat)x;
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)top;
{
    return CGRectGetMinY(self.frame);
}

- (void)setTop:(CGFloat)y;
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)right;
{
    return CGRectGetMaxX(self.frame);
}

- (void)setRight:(CGFloat)right;
{
    CGRect frame = self.frame;
    frame.origin.x = right - CGRectGetWidth(frame);
    
    self.frame = frame;
}

- (CGFloat)bottom;
{
    return CGRectGetMaxY(self.frame);
}

- (void)setBottom:(CGFloat)bottom;
{
    CGRect frame = self.frame;
    frame.origin.y = bottom - CGRectGetHeight(frame);
    
    self.frame = frame;
}

- (CGFloat)centerX;
{
    return [self center].x;
}

- (void)setCenterX:(CGFloat)centerX;
{
    if (isnan(centerX)) {
        centerX = 0;
    }
    self.center = CGPointMake(centerX, self.center.y);
}

- (CGFloat)centerY;
{
    return self.center.y;
}

- (void)setCenterY:(CGFloat)centerY;
{
    if (isnan(centerY)) {
        centerY = 0;
    }
    self.center = CGPointMake(self.center.x, centerY);
}

- (CGFloat)width;
{
    return CGRectGetWidth(self.frame);
}

- (void)setWidth:(CGFloat)width;
{
    CGRect frame = self.frame;
    frame.size.width = width;
    
    self.frame = CGRectStandardize(frame);
}

- (CGFloat)height;
{
    return CGRectGetHeight(self.frame);
}

- (void)setHeight:(CGFloat)height;
{
    CGRect frame = self.frame;
    frame.size.height = height;
    
    self.frame = CGRectStandardize(frame);
}
@end

NS_ASSUME_NONNULL_END
