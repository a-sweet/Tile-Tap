//
//  IpadViewController.m
//  Tile Tap Final
//
//  Created by Matthew Carroll on 6/2/14.
//  Copyright (c) 2014 Matthew Carroll. All rights reserved.
//

#import "IpadViewController.h"

@interface IpadViewController ()

@end

@implementation IpadViewController
int x, red, score, highScore, Pause, blocks, z, redBoxCount, faster, stopper, blah, Pause3, YesNewGame, Matt;
NSTimer * myTimer;
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _Pause2.image = [UIImage imageNamed:@"PauseButton.png"];
    [self.PauseThing addSubview:_Pause2];
    Pause3 = 0;
    _RestartImage.image = [UIImage imageNamed:@"PlayButton.png"];
    [self.Restart addSubview:_RestartImage];
    [self.block1 setBackgroundColor:[UIColor blueColor]];self.block1.layer.cornerRadius = 7;
    [self.block2 setBackgroundColor:[UIColor blueColor]];self.block2.layer.cornerRadius = 7;
    [self.block3 setBackgroundColor:[UIColor blueColor]];self.block3.layer.cornerRadius = 7;
    [self.block4 setBackgroundColor:[UIColor blueColor]];self.block4.layer.cornerRadius = 7;
    [self.block5 setBackgroundColor:[UIColor blueColor]];self.block5.layer.cornerRadius = 7;
    [self.block6 setBackgroundColor:[UIColor blueColor]];self.block6.layer.cornerRadius = 7;
    [self.block7 setBackgroundColor:[UIColor blueColor]];self.block7.layer.cornerRadius = 7;
    [self.block8 setBackgroundColor:[UIColor blueColor]];self.block8.layer.cornerRadius = 7;
    [self.block9 setBackgroundColor:[UIColor blueColor]];self.block9.layer.cornerRadius = 7;
    [self.bloc1 setBackgroundColor:[UIColor blueColor]];self.bloc1.layer.cornerRadius = 7;
    [self.bloc2 setBackgroundColor:[UIColor blueColor]];self.bloc2.layer.cornerRadius = 7;
    [self.bloc3 setBackgroundColor:[UIColor blueColor]];self.bloc3.layer.cornerRadius = 7;
    [self.bloc4 setBackgroundColor:[UIColor blueColor]];self.bloc4.layer.cornerRadius = 7;
    [self.bloc5 setBackgroundColor:[UIColor blueColor]];self.bloc5.layer.cornerRadius = 7;
    [self.bloc6 setBackgroundColor:[UIColor blueColor]];self.bloc6.layer.cornerRadius = 7;
    [self.bloc7 setBackgroundColor:[UIColor blueColor]];self.bloc7.layer.cornerRadius = 7;
    
    //Reset all scores
    self.GameOverLabel.text = [NSString stringWithFormat:@""];
    self.scoreLabel.text = [NSString stringWithFormat:@" 0 "];
    self.highScoreLabel.text = [NSString stringWithFormat:@"%i",highScore];
    redBoxCount = 0;
    z = 1;
    Pause = 1;
    stopper = 0;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)changeColor:(UIButton *)sender {
    UIColor * currentColor = sender.backgroundColor;
    if(stopper == 0){
        if(Pause == 1){
            if(blah == 1){
                //When clicked change color from red to blue
                if(currentColor == [UIColor redColor]){
                    [sender setBackgroundColor:[UIColor blueColor]];
                    x = x + 1;
                    redBoxCount --;
                }
                
                //When clicked change color from blue to red
                else if(currentColor == [UIColor blueColor]){
                    [sender setBackgroundColor:[UIColor redColor]];
                    x = x - 1 ;
                    redBoxCount ++;
                }
            }
        }}
    //Score
    score = x;
    self.scoreLabel.text = [NSString stringWithFormat:@"%i", score];
    
    //Highscore
    if (highScore < score){
        highScore = score;
        self.highScoreLabel.text = [NSString stringWithFormat:@"%i",highScore];
        
    }
    

}
- (IBAction)RestartGame:(id)sender {
    
    if(_RestartImage.image == [UIImage imageNamed:@"PlayButton.png"]){
        [self viewDidLoad];
    }
    Matt = 1;
    blah = 1;
    score = 0;
    x = 0;
    [myTimer invalidate];
    myTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(RandomRed) userInfo:nil repeats: YES];
    Pause = 1;
    stopper = 0;
    YesNewGame = 1;
    if (_RestartImage.image == [UIImage imageNamed:@"EndButton.png"]){
        Matt = 0;
        _RestartImage.image = [UIImage imageNamed:@"PlayButton.png"];
        [self.Restart addSubview:_RestartImage];
        [self.block1 setBackgroundColor:[UIColor blueColor]];self.block1.layer.cornerRadius = 7;
        [self.block2 setBackgroundColor:[UIColor blueColor]];self.block2.layer.cornerRadius = 7;
        [self.block3 setBackgroundColor:[UIColor blueColor]];self.block3.layer.cornerRadius = 7;
        [self.block4 setBackgroundColor:[UIColor blueColor]];self.block4.layer.cornerRadius = 7;
        [self.block5 setBackgroundColor:[UIColor blueColor]];self.block5.layer.cornerRadius = 7;
        [self.block6 setBackgroundColor:[UIColor blueColor]];self.block6.layer.cornerRadius = 7;
        [self.block7 setBackgroundColor:[UIColor blueColor]];self.block7.layer.cornerRadius = 7;
        [self.block8 setBackgroundColor:[UIColor blueColor]];self.block8.layer.cornerRadius = 7;
        [self.block9 setBackgroundColor:[UIColor blueColor]];self.block9.layer.cornerRadius = 7;
        [self.bloc1 setBackgroundColor:[UIColor blueColor]];self.bloc1.layer.cornerRadius = 7;
        [self.bloc2 setBackgroundColor:[UIColor blueColor]];self.bloc2.layer.cornerRadius = 7;
        [self.bloc3 setBackgroundColor:[UIColor blueColor]];self.bloc3.layer.cornerRadius = 7;
        [self.bloc4 setBackgroundColor:[UIColor blueColor]];self.bloc4.layer.cornerRadius = 7;
        [self.bloc5 setBackgroundColor:[UIColor blueColor]];self.bloc5.layer.cornerRadius = 7;
        [self.bloc6 setBackgroundColor:[UIColor blueColor]];self.bloc6.layer.cornerRadius = 7;
        [self.bloc7 setBackgroundColor:[UIColor blueColor]];self.bloc7.layer.cornerRadius = 7;
        
    }
    
}

//Randomly change red
-(void)RandomRed{
    if(Matt == 1){
        if(stopper == 0){
            if(Pause == 1){
                _RestartImage.image = [UIImage imageNamed:@"EndButton.png"];
                [self.Restart addSubview:_RestartImage];
                red = rand()%16 + 1;
                if(red == 16){if (self.bloc7.backgroundColor != [UIColor redColor]){[self.bloc7 setBackgroundColor:[UIColor redColor]];redBoxCount ++;}}
                if(red == 15){if (self.bloc6.backgroundColor != [UIColor redColor]){[self.bloc6 setBackgroundColor:[UIColor redColor]];redBoxCount ++;}}
                if(red == 14){if (self.bloc5.backgroundColor != [UIColor redColor]){[self.bloc5 setBackgroundColor:[UIColor redColor]];redBoxCount ++;}}
                if(red == 13){if (self.bloc4.backgroundColor != [UIColor redColor]){[self.bloc4 setBackgroundColor:[UIColor redColor]];redBoxCount ++;}}
                if(red == 12){if (self.bloc3.backgroundColor != [UIColor redColor]){[self.bloc3 setBackgroundColor:[UIColor redColor]];redBoxCount ++;}}
                if(red == 11){if (self.bloc2.backgroundColor != [UIColor redColor]){[self.bloc2 setBackgroundColor:[UIColor redColor]];redBoxCount ++;}}
                if(red == 10){if (self.bloc1.backgroundColor != [UIColor redColor]){[self.bloc1 setBackgroundColor:[UIColor redColor]];redBoxCount ++;}}
                if(red == 9){if (self.block9.backgroundColor != [UIColor redColor]){[self.block9 setBackgroundColor:[UIColor redColor]];redBoxCount ++;}}
                if(red == 8){if (self.block8.backgroundColor != [UIColor redColor]){[self.block8 setBackgroundColor:[UIColor redColor]];redBoxCount ++;}}
                if(red == 7){if (self.block7.backgroundColor != [UIColor redColor]){[self.block7 setBackgroundColor:[UIColor redColor]];redBoxCount ++;}}
                if(red == 6){if (self.block6.backgroundColor != [UIColor redColor]){[self.block6 setBackgroundColor:[UIColor redColor]];redBoxCount ++;}}
                if(red == 5){if (self.block5.backgroundColor != [UIColor redColor]){[self.block5 setBackgroundColor:[UIColor redColor]];redBoxCount ++;}}
                if(red == 4){if (self.block4.backgroundColor != [UIColor redColor]){[self.block4 setBackgroundColor:[UIColor redColor]];redBoxCount ++;}}
                if(red == 3){if (self.block3.backgroundColor != [UIColor redColor]){[self.block3 setBackgroundColor:[UIColor redColor]];redBoxCount++ ;}}
                if(red == 2){if (self.block2.backgroundColor != [UIColor redColor]){[self.block2 setBackgroundColor:[UIColor redColor]];redBoxCount ++;}}
                if(red == 1){if (self.block1.backgroundColor != [UIColor redColor]){[self.block1 setBackgroundColor:[UIColor redColor]];redBoxCount ++;}}
                blocks = 0;
                red = 0;
                if (score == 20){
                    [myTimer invalidate];
                    myTimer = [NSTimer scheduledTimerWithTimeInterval:0.08 target:self selector:@selector(RandomRed) userInfo:nil repeats: YES];
                }
                if (score == 40){
                    [myTimer invalidate];
                    myTimer = [NSTimer scheduledTimerWithTimeInterval:0.07 target:self selector:@selector(RandomRed) userInfo:nil repeats: YES];
                }

                if (score == 60){
                    [myTimer invalidate];
                    myTimer = [NSTimer scheduledTimerWithTimeInterval:0.06 target:self selector:@selector(RandomRed) userInfo:nil repeats: YES];
                }
                if (redBoxCount >= 12){
                    stopper = 1;
                    self.GameOverLabel.text = [NSString stringWithFormat:@"Game Over"];
                    _RestartImage.image = [UIImage imageNamed:@"PlayButton.png"];
                    [self.Restart addSubview:_RestartImage];
                    Matt = 0;
                }
            }}}}
//Pause
- (IBAction)pauseButton:(id)sender {
    if(_RestartImage.image == [UIImage imageNamed:@"EndButton.png"]){
        if (Pause3 == 0){
            _Pause2.image = [UIImage imageNamed:@"PauseButton.png"];
            [self.PauseThing addSubview:_Pause2];
            Pause3 = 1;
        }
        if (Pause3 == 1){
            _Pause2.image = [UIImage imageNamed:@"ResumeButton.png"];
            [self.PauseThing addSubview:_Pause2];
            Pause3 = 0;
        }
        if(blocks == 0){
            Pause = 0;
        }
        z = z + 1;
        if(z == 3){
            _Pause2.image = [UIImage imageNamed:@"PauseButton.png"];
            [self.PauseThing addSubview:_Pause2];
            Pause = 1;
            z = 1;
        }}

}
@end
