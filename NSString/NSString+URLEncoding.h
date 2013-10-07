//
//  NSString+URLEncoding.h
//
//  Created by Pontus Carlsson on 2013-09-25.
//

#import <Foundation/Foundation.h>

@interface NSString (URLEncoding)

- (NSString *)URLEncode;
- (NSString *)URLEncodeWithEncoding:(NSStringEncoding)encoding;

@end
