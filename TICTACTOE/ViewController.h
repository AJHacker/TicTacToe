//
//  ViewController.h
//  TICTACTOE
//
//  Created by Arihant Jain on 8/7/12.
//  Copyright (c) 2012 DMA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ComputerPlayer.h"

@interface ViewController : UIViewController{
    IBOutlet UIButton *topRight;
    IBOutlet UIButton *middleRight;
    IBOutlet UIButton *bottomRight;
     IBOutlet UIButton *topLeft;
     IBOutlet UIButton *middleLeft;
     IBOutlet UIButton *bottomLeft;
    IBOutlet UIButton *topCenter;
    IBOutlet UIButton *middleCenter;
    IBOutlet UIButton *reset;
    IBOutlet UIButton *bottomCenter;
    IBOutlet UILabel *turnText;
    UIImage *XIMG;
    UIImage *OIMG;
    bool turn;
     bool tr;
    bool br;
    bool mr;
    bool tl;
    bool ml;
    bool bl;
    bool tm;
    bool mm;
    bool bm;
    ComputerPlayer *player2;

}
-(void) moveForX;
-(IBAction)topRightAction:(id)sender;
-(IBAction)topLeftAction:(id)sender;

-(IBAction)topCenterAction:(id)sender;

-(IBAction)middleRightAction:(id)sender;

-(IBAction)middleCenterAction:(id)sender;

-(IBAction)middleLeftAction:(id)sender;

-(IBAction)bottomRightAction:(id)sender;

-(IBAction)bottomCenterAction:(id)sender;

-(IBAction)bottomLeftAction:(id)sender;

-(IBAction)resetAction:(id)sender;

-(void) toggleTurn;
@end
