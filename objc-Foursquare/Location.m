//
//  Location.m
//  objc-Foursquare
//
//  Created by Mason Macias on 6/23/15.
//  Copyright (c) 2015 Zachary Drossman. All rights reserved.
//

#import "Location.h"

@implementation Location

- (instancetype)initWithlat:(NSNumber *)lat
                        lng:(NSNumber *)lng
                    address:(NSString *)address
                       city:(NSString *)city
                      state:(NSString *)state
                 postalCode:(NSString *)postalCode
                    country:(NSString *)country
                crossStreet:(NSString *)crossStreet
{
    self = [super init];
    
    if (self) {
        _lat = lat;
        _lng = lng;
        _address = address;
        _city = city;
        _state = state;
        _postalCode = postalCode;
        _country = country;
        _crossStreet = crossStreet;
    }
    return self;
}

-(instancetype)init
{
    return [self initWithlat:@0 lng:@0 address:@"" city:@"" state:@"" postalCode:@"" country:@"" crossStreet:@""];
}

+ (NSArray *)locationsWithLocations:(NSArray *)locations
// takes an Array of Location dictionaries and returns an array of Location objects
{
    NSMutableArray *locationObjects = [NSMutableArray array];
    
    for (NSDictionary *location in locations) {
        
        Location *theLocation = [Location locationWithLocationDictionary:location];
        
        [locationObjects addObject:theLocation];
    }
    
    return locationObjects;
}

+ (instancetype)locationWithLocationDictionary:(NSDictionary *)locationDictionary
// takes a dictionary and returns a Location.
{
    Location *location = [[Location alloc] initWithlat:locationDictionary[@"lat"] lng:locationDictionary[@"lng"] address:locationDictionary[@"address"] city:locationDictionary[@"city"] state:locationDictionary[@"state"] postalCode:locationDictionary[@"postalCode"] country:locationDictionary[@"country"] crossStreet:locationDictionary[@"crossStreet"]];
    
    return location;
}



@end
