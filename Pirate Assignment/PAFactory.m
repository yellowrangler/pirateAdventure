//
//  PAFactory.m
//  Pirate Assignment
//
//  Created by Tarrant Cutler on 2/9/14.
//  Copyright (c) 2014 Tarrant Cutler. All rights reserved.
//

#import "PAFactory.h"
#import "PATile.h"

@implementation PAFactory

-(NSArray *)tiles
{
    //
    // tile 1
    //
    PATile *tile1 = [[PATile alloc] init];
    tile1.story = @"Arr me Captain. For sure we need a fearless leader such as yourself to undertake a voyage. A voyage whose purpose is to take great treasure! But to do so you must stop the evile pirate One Eye. Would you like a blunted sword to get started?";
    tile1.backgroundImage = [UIImage imageNamed:@"PirateStart.jpg"];
    
    PAWeapons *bluntedSword = [[PAWeapons alloc] init];
    bluntedSword.name = @"Blunted Sword";
    bluntedSword.damage = 12;
    tile1.weapon = bluntedSword;
    
    tile1.actionButtonName = @"Pick up a Blunted Sword";
    
    //
    // tile 2
    //
    PATile *tile2 = [[PATile alloc] init];
    tile2.story = @"You have come accross an armory. Would you like to upgrade your armor to steel armor?";
    tile2.backgroundImage = [UIImage imageNamed:@"PirateBlacksmith.jpeg"];
    
    PAArmor *steelArmor = [[PAArmor alloc] init];
    steelArmor.name = @"Steel Armor";
    steelArmor.health = 8;
    tile2.armor = steelArmor;
    
    tile2.actionButtonName = @"Pick up the Steel Armor";
    
    //
    // tile 3
    //
    PATile *tile3 = [[PATile alloc] init];
    tile3.story = @"A mysterious dock appears on the horizon. Should we stop and ask for directions?";
    tile3.backgroundImage = [UIImage imageNamed:@"PirateFriendlyDock.jpg"];
    tile3.healthEffect = 12;
    
    tile3.actionButtonName = @"Stop at Dock and ask for Directions";
    
    NSMutableArray *firstColumn =[[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    //
    // tile 4
    //
    PATile *tile4 = [[PATile alloc] init];
    tile4.story = @"You have found a parrot. This can be used in your armor slot. Parrots are a great defender and are fierecly loyal to their captian!";
    tile4.backgroundImage = [UIImage imageNamed:@"PirateParrot.jpg"];
    
    PAArmor *parrotArmor = [[PAArmor alloc] init];
    parrotArmor.name = @"Fiesty Parrot";
    parrotArmor.health = 20;
    tile4.armor = parrotArmor;
    
    tile4.actionButtonName = @"Adopt the parrot";

    //
    // tile 5
    //
    PATile *tile5 = [[PATile alloc] init];
    tile5.story = @"Arr - Ye have stumbled accross a cache of pirate weapons. Wouls you like to upgrade to a pistol?";
    tile5.backgroundImage = [UIImage imageNamed:@"PirateWeapons.jpeg"];
    
    PAWeapons *pistolWeapon = [[PAWeapons alloc] init];
    pistolWeapon.name = @"Pistol";
    pistolWeapon.damage = 17;
    tile5.weapon = pistolWeapon;
    
    tile5.actionButtonName = @"Pick up the pistol";
    
    //
    // tile 6
    //
    PATile *tile6 = [[PATile alloc] init];
    tile6.story = @"Bad luck me hearty. You have been captured by pirates and are ordered to walk the plank!";
    tile6.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile6.healthEffect = -22;
    
    tile6.actionButtonName = @"Show no fear. Walk the plank";
    
    NSMutableArray *secondColumn =[[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    //
    // tile 7
    //
    PATile *tile7 = [[PATile alloc] init];
    tile7.story = @"You have sighetd a pirate battle off the coast. Should we intervine?";
    tile7.backgroundImage = [UIImage imageNamed:@"PirateShipBattle.jpeg"];
    tile7.healthEffect = 8;
    
    tile7.actionButtonName = @"Intervine in the pirate battle";
    
    //
    // tile 8
    //
    PATile *tile8 = [[PATile alloc] init];
    tile8.story = @"Out of the depths of the ocean and legend, the mighty Kracken appears";
    tile8.backgroundImage = [UIImage imageNamed:@"PiratePlank.jpg"];
    tile8.healthEffect = -46;
    
    tile8.actionButtonName = @"Abandon ship";
    
    //
    // tile 9
    //
    PATile *tile9 = [[PATile alloc] init];
    tile9.story = @"Arr - Ye have stumbled on a cave full of pirate treasure!";
    tile9.backgroundImage = [UIImage imageNamed:@"PirateTreasure.jpeg"];
    tile9.healthEffect = 20;
    
    tile9.actionButtonName = @"Take the treasure";
    
    NSMutableArray *thirdColumn =[[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    //
    // tile 10
    //
    PATile *tile10 = [[PATile alloc] init];
    tile10.story = @"A group of pirates attempts to board your ship!";
    tile10.backgroundImage = [UIImage imageNamed:@"PirateAttack.jpg"];
    tile10.healthEffect = -15;
    
    tile10.actionButtonName = @"Repell the pirate invaders";
    
    //
    // tile 11
    //
    PATile *tile11 = [[PATile alloc] init];
    tile11.story = @"In the deep of the sea, many things live and many things can be found. Will the fortune bring help or ruin?";
    tile11.backgroundImage = [UIImage imageNamed:@"PirateTreasurer2.jpeg"];
    tile11.healthEffect = -7;
    
    tile11.actionButtonName = @"Swim deeper";
    
    //
    // tile 12
    //
    PATile *tile12 = [[PATile alloc] init];
    tile12.story = @"Your final face off with the famous pirate One Eye!";
    tile12.backgroundImage = [UIImage imageNamed:@"PirateBoss.jpeg"];
    tile12.healthEffect = -15;
    
    tile12.actionButtonName = @"Fight One Eye";
    
    NSMutableArray *fourthColumn =[[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    NSArray *tiles = [[NSArray alloc] initWithObjects:firstColumn,secondColumn,thirdColumn,fourthColumn, nil];
    
    return tiles;
}

-(PACharacter *)character
{
    PACharacter *character = [[PACharacter alloc] init];
    
    PAWeapons *weapon = [[PAWeapons alloc] init];
    weapon.name = @"Fists";
    weapon.damage = 10;
    character.weapon = weapon;
    
    PAArmor *armor = [[PAArmor alloc] init];
    armor.name = @"Cloak";
    armor.health = 5;
    character.armor = armor;
    
    character.health = 100;
    character.damage = 0;
    
    return character;
}

-(PABoss *)boss
{
    PABoss *boss = [[PABoss alloc] init];
    boss.health = 65;
    
    return boss;
}

@end
