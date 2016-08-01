//
//  MusicianDetailViewController.m
//  GrailDiary
//
//  Created by Gregory Weiss on 8/1/16.
//  Copyright © 2016 Gregory Weiss. All rights reserved.
//

#import "MusicianDetailViewController.h"

@interface MusicianDetailViewController ()

// ADD PROPERTIES AND CONECTIONS HERE!!!!
@property (weak, nonatomic) IBOutlet UILabel *musicianNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *paymentPerShowLabel;
@property (weak, nonatomic) IBOutlet UILabel *foundedOrBornLabel;

@property (weak, nonatomic) IBOutlet UILabel *bioLabel;

@property (weak, nonatomic) IBOutlet UIImageView *musicianImageView;


@property (weak, nonatomic) IBOutlet UILabel *finePrintLabel;

- (void)configureView;

@end

@implementation MusicianDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self configureView];

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

#pragma mark - Managing the detail view

- (void)setMusician:(Musician *)newMusician
{
    if (_musician != newMusician)
    {
        _musician = newMusician;
        
        // Update the view.
        [self configureView];
    }
}


#pragma mark - Configure the view

- (void)configureView
{
    
    if (self.musician)
    {
        self.title = [NSString stringWithFormat: @"RICHEST MUSICIANS"];
        
        self.musicianNameLabel.text = self.musician.name;
        self.paymentPerShowLabel.text = self.musician.paymentPerShow;
        self.bioLabel.text = self.musician.bio;
        self.foundedOrBornLabel.text = self.musician.foundedOrBorn;
        self.musicianImageView.image = [UIImage imageNamed:self.musician.imageName];
        self.finePrintLabel.text = @"DISCLAIMER:  We found which tours grossed the largest amount of money in the history of music, and split the total amount with the number of shows played on the tour. Doing that we managed to see how much money was earned per single show. Our source was List of the highest grossing concert tours. The list for the tour was obtained from Billboard and Pollstar with sales information from promoters and managers who organized the tours.";
        
        
        // Payment per show:
    }
}


@end
