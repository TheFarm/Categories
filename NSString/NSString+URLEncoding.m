//
//  NSString+URLEncoding.m
//
//  Created by Pontus Carlsson on 2013-09-25.
//

#import "NSString+URLEncoding.h"

@implementation NSString (URLEncoding)

NSStringEncoding defaultEncoding = NSUTF8StringEncoding;
NSString *escapedCharacters = @"!*'\"();:@&=+$,/?%#[]% ";

- (NSString *)URLEncode
{
    return [self URLEncodeWithEncoding:defaultEncoding];
}

- (NSString *)URLEncodeWithEncoding:(NSStringEncoding)encoding
{
    CFStringRef selfReference = (__bridge CFStringRef)self;
    CFStringRef escapedCharactersReference = (__bridge CFStringRef)escapedCharacters;

    return (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(nil, selfReference, nil, escapedCharactersReference,
                                         CFStringConvertNSStringEncodingToEncoding(encoding)));
}

@end
