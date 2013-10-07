//
//  UIView+calculateContentHeight.m
//
//  Created by Pontus Carlsson on 2013-08-13.
//

#import "UIView+calculateContentHeight.h"

@implementation UIView (calculateContentHeight)

- (CGFloat)calculateContentHeight
{
    CGFloat contentHeight = 0.0f;
    
    for (UIView *subview in self.subviews) {
        if (subview.hidden) {
            continue;
        }
        
        CGFloat viewHeightOffset = subview.y + subview.height;
        
        if (viewHeightOffset > contentHeight) {
            contentHeight = viewHeightOffset;
        }
    }
    
    return contentHeight;
}

@end
