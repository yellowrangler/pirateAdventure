//
//  PACharacter.h
//  Pirate Assignment
//
//  Created by Tarrant Cutler on 2/10/14.
//  Copyright (c) 2014 Tarrant Cutler. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PAArmor.h"
#import "PAWeapons.h"

@interface PACharacter : NSObject

@property (strong, nonatomic) PAArmor *armor;
@property (strong, nonatomic) PAWeapons *weapon;
@property (nonatomic) int damage;
@property (nonatomic) int health;

@end
