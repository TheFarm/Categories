//
//  NSManagedObject+accessUnderlyingValue.m
//
//  Created by Pontus Carlsson on 2013-09-18.
//

#import "NSManagedObject+accessUnderlyingValue.h"

@implementation NSManagedObject (accessUnderlyingValue)

- (id)accessUnderlyingValue:(NSString *)key
{
    [self willAccessValueForKey:key];
    id object = [self primitiveValueForKey:key];
    [self didAccessValueForKey:key];
    
    return object;
}

@end
