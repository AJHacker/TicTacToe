//
//  ViewController.m
//  TICTACTOE
//
//  Created by Arihant Jain on 8/7/12.
//  Copyright (c) 2012 DMA. All rights reserved.

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
-(void) moveForX {
    [player2 descideMove];
    turn = TRUE;
    if ([player2 GetX]==0 &&[player2 GetY] == 0) {
        [self bottomLeftAction:Nil];
    }
    if ([player2 GetX]==0 &&[player2 GetY] == 1) {
        [self bottomCenterAction:Nil];
    }
if ([player2 GetX]==0 &&[player2 GetY] == 2) {
    [self bottomRightAction:Nil];
}
if ([player2 GetX]==1 &&[player2 GetY] ==0) {
    [self middleLeftAction:Nil];
}
if ([player2 GetX]==1 &&[player2 GetY] == 1) {
    [self middleCenterAction:Nil];
}
if ([player2 GetX]==1 &&[player2 GetY] == 2) {
    [self middleRightAction:Nil];
}
if ([player2 GetX]==2 &&[player2 GetY] == 0) {
    [self topLeftAction:Nil];
}
if ([player2 GetX]==2 &&[player2 GetY] == 1) {
    [self topCenterAction:Nil];
}
if ([player2 GetX]==2 &&[player2 GetY] == 2) {
    [self topRightAction:Nil];
     }
    turn = FALSE;
   
    if ([player2 winner] == 0) {
        [turnText setText:@"O WINS!"];
    
    }else if ( [player2 winner]==1 ){
        [turnText setText:@"O WINS!"];
    }
}
    
-(IBAction)topRightAction:(id)sender {
    if (turn==1){
        [topRight setImage:XIMG forState:UIControlStateNormal];
        tr=1;
        [player2 topRightMove:1];
    } else{
        [topRight setImage:OIMG forState:UIControlStateNormal];
        tr=0;
        [player2 topRightMove:0];
            [self moveForX];
    }
    
    }


-(IBAction)topLeftAction:(id)sender{
    if (turn==1){
        [topLeft setImage:XIMG forState:UIControlStateNormal];
        tl=1;
        [player2 topLeftMove:1];
        [self toggleTurn];
    //    printf('turn is 1');
    } else{
        [topLeft setImage:OIMG forState:UIControlStateNormal];
        tl=0;
        [player2 botLeftMove:0];
            [self moveForX];
        
    }
   
    
}
-(IBAction)topCenterAction:(id)sender{
    if (turn==1){
        [topCenter setImage:XIMG forState:UIControlStateNormal];
        tm=1;
        [player2 topMidMove:1];
    } else{
        [topCenter setImage:OIMG forState:UIControlStateNormal];
        tm=0;
        [player2 topMidMove:0];
            [self moveForX];
        
    }
   
    
}
-(IBAction)middleRightAction:(id)sender{
    if (turn==1){
        [middleRight setImage:XIMG forState:UIControlStateNormal];
        mr=1;
        [player2 midRightMove:1];
    } else{
        [middleRight setImage:OIMG forState:UIControlStateNormal];
        mr=0;
        [player2 midRightMove:0];
            [self moveForX];
    }
   
    
}
-(IBAction)middleCenterAction:(id)sender{
    if (turn==1){
        [middleCenter setImage:XIMG forState:UIControlStateNormal];
        mm=1;
        [player2 midMidMove:1];
    } else{
        [middleCenter setImage:OIMG forState:UIControlStateNormal];
        mm=0;
        [player2 midMidMove:0];
            [self moveForX];
    }
   
    
}
-(IBAction)middleLeftAction:(id)sender{
    if (turn==1){
        [middleLeft setImage:XIMG forState:UIControlStateNormal];
        ml=1;
        [player2 midLeftMove:1];
    } else{
        [middleLeft setImage:OIMG forState:UIControlStateNormal];
        ml=0;
        [player2 midLeftMove:0];
            [self moveForX];
    }
    
    
}
-(IBAction)bottomCenterAction:(id)sender{
    if (turn==1){
        [bottomCenter setImage:XIMG forState:UIControlStateNormal];
        bm=1;
        [player2 botMidMove:1];
    } else{
        [bottomCenter setImage:OIMG forState:UIControlStateNormal];
        bm=0;
        [player2 botMidMove:0];
            [self moveForX];
    }
   
    
}
-(IBAction)bottomRightAction:(id)sender{
    if (turn==1){
        [bottomRight setImage:XIMG forState:UIControlStateNormal];
        br=1;
        [player2 botRightMove:1];
    } else{
        [bottomRight setImage:OIMG forState:UIControlStateNormal];
        br=0;
        [player2 botRightMove:0];
            [self moveForX];
        
    }
   
    
}

-(IBAction)bottomLeftAction:(id)sender{
    if (turn==1){
        [bottomLeft setImage:XIMG forState:UIControlStateNormal];
        bl=1;
        [player2 botLeftMove:1];
    } else{
        [bottomLeft setImage:OIMG forState:UIControlStateNormal];
        bl=0;
        [player2 botLeftMove:0];
        [self moveForX];
        
    }
    
    
}
-(IBAction)resetAction:(id)sender{
    [bottomLeft setImage:nil forState:UIControlStateNormal];
    [topLeft setImage:nil forState:UIControlStateNormal];
    [middleLeft setImage:nil forState:UIControlStateNormal];
    [middleRight setImage:nil forState:UIControlStateNormal];
    [topRight setImage:nil forState:UIControlStateNormal];
    [bottomRight setImage:nil forState:UIControlStateNormal];
    [middleCenter setImage:nil forState:UIControlStateNormal];
    [bottomCenter setImage:nil forState:UIControlStateNormal];
    [topCenter setImage:nil forState:UIControlStateNormal];
    tr=nil;
    br=nil;
     mr=nil;
     tl=nil;
     ml=nil;
     bl=nil;
     tm=nil;
     mm=nil;
     bm=nil;
    turn = 0;
}
-(void) toggleTurn{
    turn=!turn;
   }




- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    player2 = [[ComputerPlayer alloc] init];
    XIMG = [UIImage imageNamed:@"X.png"];
    OIMG = [UIImage imageNamed:@"O.png"];
    turn = 0;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
