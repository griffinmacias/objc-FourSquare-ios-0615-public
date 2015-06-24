//
//  Venue.h
//  objc-Foursquare
//
//  Created by Mason Macias on 6/23/15.
//  Copyright (c) 2015 Zachary Drossman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Location.h"
@interface Venue : NSObject

@property (nonatomic,strong)NSString *name;
@property (nonatomic,strong)NSString *venueId;
@property (nonatomic,strong)Location *location;

- (instancetype)initWithName:(NSString *)name
                     venueId:(NSString *)venueId
                    location:(Location *)location;


+ (NSArray *)venuesWithVenueDictionaries:(NSArray *)venues; // takes an Array of venue dictionaries and returns an array of Venue objects
+ (instancetype)venueWithVenueDictionary:(NSDictionary *)venueDictionary;  // takes a dictionary and returns a venue.


@end
