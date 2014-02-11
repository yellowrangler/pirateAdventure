//
//  PATile.h
//  Pirate Assignment
//
//  Created by Tarrant Cutler on 2/9/14.
//  Copyright (c) 2014 Tarrant Cutler. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PAWeapons.h"
#import "PAArmor.h"

@interface PATile : NSObject

@property (strong, nonatomic) NSString *story;
@property (strong, nonatomic) UIImage *backgroundImage;
@property (strong, nonatomic) NSString *actionButtonName;
@property (strong, nonatomic) PAWeapons *weapon;
@property (strong, nonatomic) PAArmor *armor;
@property (nonatomic) int healthEffect;

@end
