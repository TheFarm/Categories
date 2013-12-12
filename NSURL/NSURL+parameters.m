//
//  NSURL+parameters.m
//  VF
//
//  Created by Pontus Carlsson on 12/12/13.
//  Copyright (c) 2013 The Farm. All rights reserved.
//

#import "NSURL+parameters.h"

@implementation NSURL (parameters)

- (NSDictionary *)parameters
{
    NSMutableDictionary * parametersDictionary = [NSMutableDictionary dictionary];
    
    NSArray * queryComponents = [self.query componentsSeparatedByString:@"&"];
    
    for (NSString * queryComponent in queryComponents) {
        NSString * key = [queryComponent componentsSeparatedByString:@"="].firstObject;
        NSString * value = [queryComponent substringFromIndex:(key.length + 1)];
        
        [parametersDictionary setObject:value forKey:key];
    }
    
    return parametersDictionary;
}

- (NSString *)valueForParameter:(NSString *)parameterKey
{
    return [[self parameters] objectForKey:parameterKey];
}

@end
