//
//  VenueDetailViewController.m
//  objc-Foursquare
//
//  Created by Mason Macias on 6/23/15.
//  Copyright (c) 2015 Zachary Drossman. All rights reserved.
//

#import "VenueDetailViewController.h"
#import "Location.h"
@interface VenueDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *addressLabel;
@property (weak, nonatomic) IBOutlet UILabel *cityLabel;
@property (weak, nonatomic) IBOutlet UILabel *stateLabel;
@property (weak, nonatomic) IBOutlet UILabel *postalLabel;
@property (weak, nonatomic) IBOutlet UILabel *crossStreetLabel;
@property (weak, nonatomic) IBOutlet UILabel *venueIdLabel;

@end

@implementation VenueDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

    self.addressLabel.text = self.venue.location.address;
    self.cityLabel.text = self.venue.location.city;
    self.stateLabel.text = self.venue.location.state;
    self.postalLabel.text = self.venue.location.postalCode;
    self.crossStreetLabel.text = self.venue.location.crossStreet;

    
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
