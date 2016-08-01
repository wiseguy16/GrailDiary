//
//  Musician.m
//  GrailDiary
//
//  Created by Gregory Weiss on 8/1/16.
//  Copyright © 2016 Gregory Weiss. All rights reserved.
//

#import "Musician.h"

@implementation Musician

+ (Musician *)musicianWithDictionary:(NSDictionary *)musicianDict
{
    Musician *aMusician = nil;
    if (musicianDict)
    {
        aMusician = [[Musician alloc] init];
        aMusician.name = [musicianDict objectForKey:@"name"];
        aMusician.paymentPerShow = musicianDict[@"paymentPerShow"];
        aMusician.foundedOrBorn = musicianDict[@"foundedOrBorn"];
        aMusician.imageName = musicianDict[@"musicianImage"];
    }
    
    
    return aMusician;
}

@end
