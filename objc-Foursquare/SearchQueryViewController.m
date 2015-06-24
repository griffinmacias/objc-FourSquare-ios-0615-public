//
//  SearchQueryViewController.m
//  objc-Foursquare
//
//  Created by Mason Macias on 6/23/15.
//  Copyright (c) 2015 Zachary Drossman. All rights reserved.
//

#import "SearchQueryViewController.h"
#import "VenuesTableViewController.h"
#import <Foursquare-API-v2/Foursquare2.h>
#import "Venue.h"
@interface SearchQueryViewController ()
@property (weak, nonatomic) IBOutlet UITextField *whatAreYouLookingForTextField;
@property (weak, nonatomic) IBOutlet UITextField *HowFarAreYouWillingToTravelTextField;
@property (weak, nonatomic) IBOutlet UITextField *latitudeTextField;
@property (weak, nonatomic) IBOutlet UITextField *longitudeTextField;

@property (nonatomic, strong) NSArray *venuesList;

@end

@implementation SearchQueryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)getResultsTapped:(id)sender {
    
    NSString *searchQuery = self.whatAreYouLookingForTextField.text;
    NSNumber *willingnessToTravel = @([self.HowFarAreYouWillingToTravelTextField.text floatValue]);
    NSNumber *latitude = @([self.latitudeTextField.text floatValue]);
    NSNumber *longitude = @([self.longitudeTextField.text floatValue]);
    
    [Foursquare2 venueSearchNearByLatitude:latitude longitude:longitude query:searchQuery limit:@100 intent:intentBrowse radius:willingnessToTravel categoryId:nil callback:^(BOOL success, id result) {
        
        
        
        NSArray *venues = result[@"response"][@"venues"];
    
        
        
        self.venuesList = [Venue venuesWithVenueDictionaries:venues];
        
        
        
        [self performSegueWithIdentifier:@"pushSegue" sender:sender];
        
        
        

    }
     ];
   
    
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
      
    VenuesTableViewController *destination = segue.destinationViewController;
    
        destination.venues = self.venuesList;
    destination.navigationItem.title = self.whatAreYouLookingForTextField.text;


}


@end
