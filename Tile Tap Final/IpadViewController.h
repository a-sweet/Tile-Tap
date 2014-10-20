//
//  IpadViewController.h
//  Tile Tap Final
//
//  Created by Matthew Carroll on 6/2/14.
//  Copyright (c) 2014 Matthew Carroll. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IpadViewController : UIViewController
- (IBAction)changeColor:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *block1;
@property (weak, nonatomic) IBOutlet UIButton *block2;
@property (weak, nonatomic) IBOutlet UIButton *block3;
@property (weak, nonatomic) IBOutlet UIButton *block4;
@property (weak, nonatomic) IBOutlet UIButton *block5;
@property (weak, nonatomic) IBOutlet UIButton *block6;
@property (weak, nonatomic) IBOutlet UIButton *block7;
@property (weak, nonatomic) IBOutlet UIButton *block8;
@property (weak, nonatomic) IBOutlet UIButton *block9;
@property (weak, nonatomic) IBOutlet UIButton *bloc1;
@property (weak, nonatomic) IBOutlet UIButton *bloc2;
@property (weak, nonatomic) IBOutlet UIButton *bloc3;
@property (weak, nonatomic) IBOutlet UIButton *bloc4;
@property (weak, nonatomic) IBOutlet UIButton *bloc5;
@property (weak, nonatomic) IBOutlet UIButton *bloc6;
@property (weak, nonatomic) IBOutlet UIButton *bloc7;


- (IBAction)RestartGame:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *Restart;
@property (weak, nonatomic) IBOutlet UIImageView *RestartImage;


@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *highScoreLabel;


- (IBAction)pauseButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *pause;
@property (weak, nonatomic) IBOutlet UIView *PauseThing;
@property (weak, nonatomic) IBOutlet UIImageView *Pause2;


@property (weak, nonatomic) IBOutlet UILabel *GameOverLabel;



@end
