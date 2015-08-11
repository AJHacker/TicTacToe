//
//  ComputerPlayer.h
//  TicTacToe
//
//  Created by Jacob Balthazor on 5/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ComputerPlayer : NSObject {
    BOOL xboard[3][3];
    BOOL oboard[3][3];
    BOOL freeSpaceBoard[3][3];
    int xMove;
    int yMove;
}

-(void)topRightMove:(BOOL)x;
-(void)topMidMove:(BOOL)x;
-(void)topLeftMove:(BOOL)x;

-(void)midRightMove:(BOOL)x;
-(void)midMidMove:(BOOL)x;
-(void)midLeftMove:(BOOL)x;

-(void)botRightMove:(BOOL)x;
-(void)botMidMove:(BOOL)x;
-(void)botLeftMove:(BOOL)x;

-(void)descideMove;
-(void)pickFirstMove;
-(int)GetX;
-(int)GetY;

-(void)print_output;
-(void)reset;
-(int)winner;

-(int)sumXDown0;
-(int)sumXDown1;
-(int)sumXDown2;

-(int)sumXAcross0;
-(int)sumXAcross1;
-(int)sumXAcross2;

-(int)sumXDiag0;
-(int)sumXDiag2;


-(int)sumODown0;
-(int)sumODown1;
-(int)sumODown2;

-(int)sumOAcross0;
-(int)sumOAcross1;
-(int)sumOAcross2;

-(int)sumODiag0;
-(int)sumODiag2;



-(BOOL)freeDown0;
-(BOOL)freeDown1;
-(BOOL)freeDown2;

-(BOOL)freeAcross0;
-(BOOL)freeAcross1;
-(BOOL)freeAcross2;

-(BOOL)freeDiag0;
-(BOOL)freeDiag2;


@end
