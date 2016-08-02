//
//  MusicianCustomViewCell.h
//  GrailDiary
//
//  Created by Gregory Weiss on 8/2/16.
//  Copyright © 2016 Gregory Weiss. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MusicianCustomViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *mName;

@property (weak, nonatomic) IBOutlet UILabel *mMoneyAmount;

@property (weak, nonatomic) IBOutlet UIImageView *mImage;


@end
