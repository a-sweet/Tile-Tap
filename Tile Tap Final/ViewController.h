//
//  ViewController.h
//  Tile Tap Final
//
//  Created by Matthew Carroll on 5/10/14.
//  Copyright (c) 2014 Matthew Carroll. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//Blue and Red Buttons

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

//Restart Button

- (IBAction)RestartGame:(id)sender;
@property (strong, nonatomic) IBOutlet UIView *Restart;
@property (weak, nonatomic) IBOutlet UIImageView *RestartImage;

//Score Board

@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *highScoreLabel;

//Pause Button

- (IBAction)pauseButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *pause;
@property (strong, nonatomic) IBOutlet UIView *PauseThing;

@property (weak, nonatomic) IBOutlet UIImageView *Pause2;

//Game Over Label
@property (weak, nonatomic) IBOutlet UILabel *GameOverLabel;


//Logo
@property (weak, nonatomic) IBOutlet UIButton *Blue1;
@property (weak, nonatomic) IBOutlet UIButton *Blue2;
@property (weak, nonatomic) IBOutlet UIButton *Blue3;
@property (weak, nonatomic) IBOutlet UIButton *Blue4;
@property (weak, nonatomic) IBOutlet UIButton *Red1;
@property (weak, nonatomic) IBOutlet UIButton *Red2;
@property (weak, nonatomic) IBOutlet UIButton *Red3;
@property (weak, nonatomic) IBOutlet UIButton *Red4;

//Screen
@property (strong, nonatomic) IBOutlet UIView *Screen;

@end
