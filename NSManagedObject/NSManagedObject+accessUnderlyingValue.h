//
//  NSManagedObject+accessUnderlyingValue.h
//
//  Created by Pontus Carlsson on 2013-09-18.
//

#import <CoreData/CoreData.h>

@interface NSManagedObject (accessUnderlyingValue)

- (id)accessUnderlyingValue:(NSString *)key;

@end
