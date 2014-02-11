//
//  PAActions.h
//  Pirate Assignment
//
//  Created by Tarrant Cutler on 2/10/14.
//  Copyright (c) 2014 Tarrant Cutler. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PAActions : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *target;
@property (nonatomic) int targetObjectIndex;
@property (nonatomic) int healthHit;

@end
