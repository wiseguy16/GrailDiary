//
//  Musician.h
//  GrailDiary
//
//  Created by Gregory Weiss on 8/1/16.
//  Copyright © 2016 Gregory Weiss. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Musician : NSObject

@property (nonatomic) NSString *name;
@property (nonatomic) NSString *paymentPerShow;
@property (nonatomic) NSString *foundedOrBorn;
@property (nonatomic) NSString *bio;
@property (nonatomic) NSString *imageName;

+ (Musician *)musicianWithDictionary:(NSDictionary *)musicianDict;

@end
