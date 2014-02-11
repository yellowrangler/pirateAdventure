//
//  PAViewController.m
//  Pirate Assignment
//
//  Created by Tarrant Cutler on 2/8/14.
//  Copyright (c) 2014 Tarrant Cutler. All rights reserved.
//

#import "PAViewController.h"
#import "PAFactory.h"
#import "PATile.h"
#import "PAWeapons.h"
#import "PAArmor.h"

@interface PAViewController ()

@end

@implementation PAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    PAFactory *factory = [[PAFactory alloc] init];
    self.tiles = [factory tiles];
    self.currentCharacter = [factory character];
    self.boss = [factory boss];
    
    self.currentPoint = CGPointMake(0, 0);
    [self updateCharacterStatusForArmor:nil withWeapons:nil withHealthEffect:0];
    [self updateAllItems];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - IBActions

- (IBAction)actionButtonPressed:(UIButton *)sender {
    PATile *tile = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    if (tile.healthEffect == -15)
    {
        self.boss.health = self.boss.health - self.currentCharacter.damage;
    }
    
    [self updateCharacterStatusForArmor:tile.armor withWeapons:tile.weapon withHealthEffect:tile.healthEffect];
    
    [self updateAllItems];
    
    if (self.currentCharacter.health <= 0)
    {
        UIAlertView *alertView =[[UIAlertView alloc] initWithTitle:@"Death Message" message:@"You have died please restart game" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alertView show];
    }
    else if (self.boss.health <= 0)
    {
        UIAlertView *alertView =[[UIAlertView alloc] initWithTitle:@"Victory Message" message:@"You have defeated One Eye" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alertView show];
    }
    
}

- (IBAction)northButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y + 1);
    [self updateAllItems];
}

- (IBAction)southButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y - 1);
    [self updateAllItems];
}

- (IBAction)westButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x - 1, self.currentPoint.y);
    [self updateAllItems];
}

- (IBAction)eastButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x + 1, self.currentPoint.y);
    [self updateAllItems];
}

- (IBAction)resetButtonPressed:(UIButton *)sender {
    self.currentCharacter = nil;
    self.boss = nil;
    
    [self viewDidLoad];
}

#pragma mark - Helper methods

-(void) updateTile
{
    PATile *tileModal = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    self.storyLabel.text = tileModal.story;
    self.backgroundImageView.image = tileModal.backgroundImage;
    self.weaponLabel.text = self.currentCharacter.weapon.name;
    self.armorLabel.text = self.currentCharacter.armor.name;
    self.healthLabel.text = [NSString stringWithFormat:@"%i", self.currentCharacter.health];
    self.damageLabel.text = [NSString stringWithFormat:@"%i", self.currentCharacter.damage];
    [self.actionButton setTitle:tileModal.actionButtonName forState:UIControlStateNormal] ;
}

-(void) updateButtons
{
    self.westButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x - 1, self.currentPoint.y)];
    self.eastButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x + 1, self.currentPoint.y)];
    self.northButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y + 1)];
    self.southButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y - 1)];
}

-(void) updateAllItems
{
    [self updateTile];
    [self updateButtons];
}

-(BOOL)tileExistsAtPoint:(CGPoint)point
{
    if (point.y >= 0 && point.x >= 0 && point.x < [self.tiles count] && point.y < [[self.tiles objectAtIndex:point.x] count])
    {
        return NO;
    }
    else
    {
        return YES;
    }
}

-(void)updateCharacterStatusForArmor: (PAArmor *)armor withWeapons:(PAWeapons *)weapon withHealthEffect:(int)healthEffect
{
    if (armor != nil)
    {
        self.currentCharacter.health = self.currentCharacter.health - self.currentCharacter.armor.health + armor.health;
        self.currentCharacter.armor = armor;
    }
    else if (weapon != nil)
    {
        self.currentCharacter.damage = self.currentCharacter.damage - self.currentCharacter.weapon.damage + weapon.damage;
        self.currentCharacter.weapon = weapon;
    }
    else if (healthEffect != 0)
    {
        self.currentCharacter.health = self.currentCharacter.health + healthEffect;
    }
    else
    {
        self.currentCharacter.health = self.currentCharacter.damage + self.currentCharacter.armor.health;
        self.currentCharacter.damage = self.currentCharacter.damage + self.currentCharacter.weapon.damage;
    }
}

@end
