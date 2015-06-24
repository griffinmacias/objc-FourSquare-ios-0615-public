//
//  Venue.m
//  objc-Foursquare
//
//  Created by Mason Macias on 6/23/15.
//  Copyright (c) 2015 Zachary Drossman. All rights reserved.
//

#import "Venue.h"

@implementation Venue

- (instancetype)initWithName:(NSString *)name
                     venueId:(NSString *)venueId
                    location:(Location *)location
{
    self = [super init];
    
    if (self) {
        _name = name;
        _venueId = venueId;
        _location = location;
    }
    
    return self;
}

-(instancetype)init
{
    return [self initWithName:@"" venueId:@"" location:nil];
}


+ (NSArray *)venuesWithVenueDictionaries:(NSArray *)venues
// takes an Array of venue dictionaries and returns an array of Venue objects

{
    NSMutableArray *venueObjects = [NSMutableArray array];
    
    for (NSDictionary *dictionary in venues)
    {
        Venue *venue = [Venue venueWithVenueDictionary:dictionary];
    
        [venueObjects addObject:venue];
    }

    return venueObjects;
}

+ (instancetype)venueWithVenueDictionary:(NSDictionary *)venueDictionary

// takes a dictionary and returns a venue.

{
    Venue *venue = [[Venue alloc] initWithName:venueDictionary[@"name"] venueId:venueDictionary[@"venueId"] location:[Location locationWithLocationDictionary:venueDictionary[@"location"]]];
    
    return venue;
}


@end
