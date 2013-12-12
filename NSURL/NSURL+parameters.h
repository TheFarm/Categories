//
//  NSURL+parameters.h
//  VF
//
//  Created by Pontus Carlsson on 12/12/13.
//  Copyright (c) 2013 The Farm. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURL (parameters)

- (NSDictionary *)parameters;

- (NSString *)valueForParameter:(NSString *)parameterKey;

@end
