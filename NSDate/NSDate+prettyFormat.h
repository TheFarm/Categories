//
//  NSDate+prettyFormat.h
//
//  Created by Pontus Carlsson on 2013-07-15.
//

#import <Foundation/Foundation.h>

@interface NSDate (prettyFormat)

- (NSString *)prettyFormatWithDateStyle:(NSDateFormatterStyle)dateStyle andTimeStyle:(NSDateFormatterStyle)timeStyle;

- (NSString *)prettyFormatWithLocaleIdentifier:(NSString *)localeIdentifier andDateStyle:(NSDateFormatterStyle)dateStyle andTimeStyle:(NSDateFormatterStyle)timeStyle;

@end
