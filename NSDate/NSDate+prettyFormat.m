//
//  NSDate+prettyFormat.m
//
//  Created by Pontus Carlsson on 2013-07-15.
//

#import "NSDate+prettyFormat.h"

@implementation NSDate (prettyFormat)

- (NSString *)prettyFormatWithDateStyle:(NSDateFormatterStyle)dateStyle andTimeStyle:(NSDateFormatterStyle)timeStyle
{
    NSString *preferredLocaleIdentifier = [[NSLocale preferredLanguages] objectAtIndex:0];
    
    return [self prettyFormatWithLocaleIdentifier:preferredLocaleIdentifier andDateStyle:dateStyle andTimeStyle:timeStyle];
}

- (NSString *)prettyFormatWithLocaleIdentifier:(NSString *)localeIdentifier andDateStyle:(NSDateFormatterStyle)dateStyle andTimeStyle:(NSDateFormatterStyle)timeStyle
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    dateFormatter.dateStyle = dateStyle;
    dateFormatter.timeStyle = timeStyle;
    
    dateFormatter.doesRelativeDateFormatting = YES;

    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:localeIdentifier];
    [dateFormatter setLocale:locale];
    
    return [dateFormatter stringFromDate:self];
}

@end
