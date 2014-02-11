//
//  PAFactory.h
//  Pirate Assignment
//
//  Created by Tarrant Cutler on 2/9/14.
//  Copyright (c) 2014 Tarrant Cutler. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PAWeapons.h"
#import "PAArmor.h"
#import "PACharacter.h"
#import "PABoss.h"

@interface PAFactory : NSObject

-(NSArray *)tiles;
-(PACharacter *)character;
-(PABoss *)boss;

@end
