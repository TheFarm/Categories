//
//  NSArray+firstObject.m
//
//  Created by Pontus Carlsson on 2013-10-02.
//

#import "NSArray+firstObject.h"

@implementation NSArray (firstObject)

- (id)firstObject
{
    id object = nil;
    
    if (self.count > 0) {
        object = [self objectAtIndex:0];
    }
    
    return object;
}

@end
