//
//  Location.h
//  objc-Foursquare
//
//  Created by Mason Macias on 6/23/15.
//  Copyright (c) 2015 Zachary Drossman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Location : NSObject

@property (nonatomic, strong)NSNumber *lat;
@property (nonatomic, strong)NSNumber *lng;
@property (nonatomic,strong)NSString *address;
@property (nonatomic,strong) NSString *city;
@property (nonatomic,strong) NSString *state;
@property (nonatomic,strong) NSString *postalCode;
@property (nonatomic,strong) NSString *country;
@property (nonatomic,strong)NSString *crossStreet;


- (instancetype)initWithlat:(NSNumber *)lat
                        lng:(NSNumber *)lng
                    address:(NSString *)address
                       city:(NSString *)city
                      state:(NSString *)state
                 postalCode:(NSString *)postalCode
                    country:(NSString *)country
                crossStreet:(NSString *)crossStreet;


+ (NSArray *)locationsWithLocations:(NSArray *)locations; // takes an Array of Location dictionaries and returns an array of Location objects
+ (instancetype)locationWithLocationDictionary:(NSDictionary *)locationDictionary;  // takes a dictionary and returns a Location.


@end
