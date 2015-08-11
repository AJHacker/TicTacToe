//
//  ComputerPlayer.m
//  TicTacToe
//
//  Created by Jacob Balthazor on 5/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ComputerPlayer.h"


@implementation ComputerPlayer

-(id)init
{
   // [super init];
    int i;
    int j;
    
    for (i=0; i<3; i++) {
        for (j=0; j<3; j++) {
            xboard[i][j] = 0;
            oboard[i][j] = 0;
            freeSpaceBoard[i][j] = 1;
        }
    }
    return self;
}

-(void)topRightMove:(BOOL)x
{
    if (x)
        xboard[2][2] = 1;
    else
        oboard[2][2] = 1;
        
    freeSpaceBoard[2][2] = 0;
}

-(void)topMidMove:(BOOL)x
{
    if (x)
        xboard[1][2] = 1;
    else
        oboard[1][2] = 1;
    
    freeSpaceBoard[1][2] = 0;
}

-(void)topLeftMove:(BOOL)x
{
    if (x)
        xboard[0][2] = 1;
    else
        oboard[0][2] = 1;
    
    freeSpaceBoard[0][2] = 0;
}


-(void)midRightMove:(BOOL)x
{
    if (x)
        xboard[2][1] = 1;
    else
        oboard[2][1] = 1;
    
    freeSpaceBoard[2][1] = 0;
}

-(void)midMidMove:(BOOL)x
{
    if (x)
        xboard[1][1] = 1;
    else
        oboard[1][1] = 1;
    
    freeSpaceBoard[1][1] = 0;
}

-(void)midLeftMove:(BOOL)x
{
    if (x)
        xboard[0][1] = 1;
    else
        oboard[0][1] = 1;
    
    freeSpaceBoard[0][1] = 0;
}


-(void)botRightMove:(BOOL)x
{
    if (x)
        xboard[2][0] = 1;
    else
        oboard[2][0] = 1;
    
    freeSpaceBoard[2][0] = 0;
}

-(void)botMidMove:(BOOL)x
{
    if (x)
        xboard[1][0] = 1;
    else
        oboard[1][0] = 1;
    
    freeSpaceBoard[1][0] = 0;
}

-(void)botLeftMove:(BOOL)x
{
    if (x)
        xboard[0][0] = 1;
    else
        oboard[0][0] = 1;
    
    freeSpaceBoard[0][0] = 0;
}


-(int)sumXDown0
{
    return xboard[0][0]+xboard[0][1]+xboard[0][2];
}
-(int)sumXDown1
{
    return xboard[1][0]+xboard[1][1]+xboard[1][2];
}
-(int)sumXDown2
{
    return xboard[2][0]+xboard[2][1]+xboard[2][2];
}

-(int)sumXAcross0
{
    return xboard[0][2]+xboard[1][2]+xboard[2][2];
}
-(int)sumXAcross1
{
    return xboard[0][1]+xboard[1][1]+xboard[2][1];
}
-(int)sumXAcross2
{
    return xboard[0][0]+xboard[1][0]+xboard[2][0];
}
-(int)sumXDiag0
{
    return xboard[0][0]+xboard[1][1]+xboard[2][2];
}
-(int)sumXDiag2
{
    return xboard[2][0]+xboard[1][1]+xboard[0][2];
}



-(BOOL)freeDown0
{
    if (freeSpaceBoard[0][0]+freeSpaceBoard[0][1]+freeSpaceBoard[0][2] > 0) {
        return TRUE;
    }
    else
        return FALSE;
}
-(BOOL)freeDown1
{
    if (freeSpaceBoard[1][0]+freeSpaceBoard[1][1]+freeSpaceBoard[1][2] > 0) {
        return TRUE;
    }
    else
        return FALSE;
}
-(BOOL)freeDown2
{
    if (freeSpaceBoard[2][0]+freeSpaceBoard[2][1]+freeSpaceBoard[2][2] > 0) {
        return TRUE;
    }
    else
        return FALSE;
}

-(BOOL)freeAcross0
{
    if (freeSpaceBoard[0][2]+freeSpaceBoard[1][2]+freeSpaceBoard[2][2] > 0) {
        return TRUE;
    }
    else
        return FALSE;
}
-(BOOL)freeAcross1
{
    if (freeSpaceBoard[0][1]+freeSpaceBoard[1][1]+freeSpaceBoard[2][1] > 0) {
        return TRUE;
    }
    else
        return FALSE;
}
-(BOOL)freeAcross2
{
    if (freeSpaceBoard[0][0]+freeSpaceBoard[1][0]+freeSpaceBoard[2][0] > 0) {
        return TRUE;
    }
    else
        return FALSE;
}

-(BOOL)freeDiag0
{
    if (freeSpaceBoard[0][0]+freeSpaceBoard[1][1]+freeSpaceBoard[2][2] > 0) {
        return TRUE;
    }
    else
        return FALSE;
}
-(BOOL)freeDiag2
{
    if (freeSpaceBoard[2][0]+freeSpaceBoard[1][1]+freeSpaceBoard[0][2] > 0) {
        return TRUE;
    }
    else
        return FALSE;
}


-(int)sumODown0;
{
    return oboard[0][0]+oboard[0][1]+oboard[0][2];
}
-(int)sumODown1
{
    return oboard[1][0]+oboard[1][1]+oboard[1][2];
}
-(int)sumODown2
{
    return oboard[2][0]+oboard[2][1]+oboard[2][2];
}

-(int)sumOAcross0
{
    return oboard[0][0]+oboard[1][0]+oboard[2][0];
}
-(int)sumOAcross1
{
    return oboard[0][1]+oboard[1][1]+oboard[2][1];
}
-(int)sumOAcross2
{
    return oboard[0][2]+oboard[1][2]+oboard[2][2];
}

-(int)sumODiag0
{
    return oboard[0][0]+oboard[1][1]+oboard[2][2];
}
-(int)sumODiag2
{
    return oboard[0][2]+oboard[1][1]+oboard[2][0];
}



-(void)descideMove
{
    int max_rating = 0;
    int x = 4;
    int y = 4;
    
    if ([self sumXDown0] > max_rating && [self freeDown0]) {
        max_rating = [self sumXDown0];
        x=0;
        if (freeSpaceBoard[0][0]) {
            y=0;
        }
        if (freeSpaceBoard[0][1]) {
            y=1;
        }
        if (freeSpaceBoard[0][2]) {
            y=2;
        }
        
    }
    if ([self sumXDown1] > max_rating && [self freeDown1]) {
        max_rating = [self sumXDown1];
        x=1;
        if (freeSpaceBoard[1][0]) {
            y=0;
        }
        if (freeSpaceBoard[1][1]) {
            y=1;
        }
        if (freeSpaceBoard[1][2]) {
            y=2;
        }
        
    }
    if ([self sumXDown2] > max_rating && [self freeDown2]) {
        max_rating = [self sumXDown2];
        x=2;
        if (freeSpaceBoard[2][0]) {
            y=0;
        }
        if (freeSpaceBoard[2][1]) {
            y=1;
        }
        if (freeSpaceBoard[2][2]) {
            y=2;
        }
        
    }
    
    if ([self sumXAcross0] > max_rating && [self freeAcross0]) {
        max_rating = [self sumXAcross0];
        y=0;
        if (freeSpaceBoard[0][0]) {
            x=0;
        }
        if (freeSpaceBoard[1][0]) {
            x=1;
        }
        if (freeSpaceBoard[2][0]) {
            x=2;
        }
        
    }
    if ([self sumXAcross1] > max_rating && [self freeAcross1]) {
        max_rating = [self sumXAcross1];
        y=1;
        if (freeSpaceBoard[0][1]) {
            x=0;
        }
        if (freeSpaceBoard[1][1]) {
            x=1;
        }
        if (freeSpaceBoard[2][1]) {
            x=2;
        }
        
    }
    if ([self sumXAcross2] > max_rating && [self freeAcross2]) {
        max_rating = [self sumXAcross2];
        y=2;
        if (freeSpaceBoard[0][2]) {
            x=0;
        }
        if (freeSpaceBoard[1][2]) {
            x=1;
        }
        if (freeSpaceBoard[2][2]) {
            x=2;
        }
        
    }
    
    if ([self sumXDiag0] > max_rating && [self freeDiag0]) {
        max_rating = [self sumXDiag0];
        if (freeSpaceBoard[0][0]) {
            x=0;
            y=0;
        }
        if (freeSpaceBoard[1][1]) {
            x=1;
            y=1;
        }
        if (freeSpaceBoard[2][2]) {
            x=2;
            y=2;
        }
        
    }
    if ([self sumXDiag2] > max_rating && [self freeDiag2]) {
        max_rating = [self sumXDiag0];
        if (freeSpaceBoard[2][0]) {
            x=2;
            y=0;
        }
        if (freeSpaceBoard[1][1]) {
            x=1;
            y=1;
        }
        if (freeSpaceBoard[0][2]) {
            x=0;
            y=2;
        }
        
    }
    
    if ([self sumODown0] == 2 && [self freeDown0]) {
        if (freeSpaceBoard[0][0]) {
            y=0;
            x=0;
        }
        if (freeSpaceBoard[0][1]) {
            y=1;
            x=0;
        }
        if (freeSpaceBoard[0][2]) {
            y=2;
            x=0;
        }
    }
    if ([self sumODown1] == 2 && [self freeDown1]) {
        if (freeSpaceBoard[1][0]) {
            y=0;
            x=1;
        }
        if (freeSpaceBoard[1][1]) {
            y=1;
            x=1;
        }
        if (freeSpaceBoard[1][2]) {
            y=2;
            x=1;
        }
    }
    if ([self sumODown2] == 2 && [self freeDown2]) {
        if (freeSpaceBoard[2][0]) {
            y=0;
            x=2;
        }
        if (freeSpaceBoard[2][1]) {
            y=1;
            x=2;
        }
        if (freeSpaceBoard[2][2]) {
            y=2;
            x=2;
        }
    }
    
    if ([self sumOAcross0] == 2 && [self freeAcross0]) {
        if (freeSpaceBoard[0][0]) {
            x=0;
            y=0;
        }
        if (freeSpaceBoard[1][0]) {
            x=1;
            y=0;
        }
        if (freeSpaceBoard[2][0]) {
            x=2;
            y=0;
        }
    }
    if ([self sumOAcross1] == 2 && [self freeAcross1]) {
        if (freeSpaceBoard[0][1]) {
            x=0;
            y=1;
        }
        if (freeSpaceBoard[1][1]) {
            x=1;
            y=1;
        }
        if (freeSpaceBoard[2][1]) {
            x=2;
            y=1;
        }
        
    }
    if ([self sumOAcross2] == 2 && [self freeAcross2]) {
        if (freeSpaceBoard[0][2]) {
            x=0;
            y=2;
        }
        if (freeSpaceBoard[1][2]) {
            x=1;
            y=2;
        }
        if (freeSpaceBoard[2][2]) {
            x=2;
            y=2;
        }
    }
    
    if ([self sumODiag0] == 2 && [self freeDiag0]) {
        if (freeSpaceBoard[0][0]) {
            x=0;
            y=0;
        }
        if (freeSpaceBoard[1][1]) {
            x=1;
            y=1;
        }
        if (freeSpaceBoard[2][2]) {
            x=2;
            y=2;
        }
    }
    if ([self sumODiag2] == 2 && [self freeDiag2]) {
        if (freeSpaceBoard[2][0]) {
            x=2;
            y=0;
        }
        if (freeSpaceBoard[1][1]) {
            x=1;
            y=1;
        }
        if (freeSpaceBoard[0][2]) {
            x=0;
            y=2;
        }
    }
    
    
    
    
    xMove = x;
    yMove = y;
    
    if(x == 4 && y == 4)
        [self pickFirstMove];
    NSLog(@"WIll move to: %d,%d",xMove,yMove);
}


-(void)print_output{
    NSLog(@"\n%d|%d|%d\n%d|%d|%d\n%d|%d|%d\n", freeSpaceBoard[0][2], freeSpaceBoard[1][2], freeSpaceBoard[2][2], freeSpaceBoard[0][1], freeSpaceBoard[1][1], freeSpaceBoard[2][1], freeSpaceBoard[0][0], freeSpaceBoard[1][0], freeSpaceBoard[2][0]);
    
}

-(void)pickFirstMove
{
    if (freeSpaceBoard[0][0] == 0) {
        xMove = 2;
        yMove = 2;
    }
    if (freeSpaceBoard[1][0] == 0) {
        xMove = 2;
        yMove = 2;
    }
    if (freeSpaceBoard[2][0] == 0) {
        xMove = 0;
        yMove = 2;
    }
    
    if (freeSpaceBoard[0][1] == 0) {
        xMove = 2;
        yMove = 0;
    }
    if (freeSpaceBoard[1][1] == 0) {
        xMove = 2;
        yMove = 0;
    }
    if (freeSpaceBoard[2][1] == 0) {
        xMove = 0;
        yMove = 0;
    }

    if (freeSpaceBoard[0][2] == 0) {
        xMove = 2;
        yMove = 0;
    }
    if (freeSpaceBoard[1][2] == 0) {
        xMove = 0;
        yMove = 0;
    }
    if (freeSpaceBoard[2][2] == 0) {
        xMove = 0;
        yMove = 0;
    }
}

-(int)GetX
{
    return xMove;
}
-(int)GetY
{
    return yMove;
}

-(void)reset
{
    int i;
    int j;
    
    for (i=0; i<3; i++) {
        for (j=0; j<3; j++) {
            xboard[i][j] = 0;
            oboard[i][j] = 0;
            freeSpaceBoard[i][j] = 1;
        }
    }
}

-(int)winner 
{
    int winner = 2;
    
    if([self sumODown0] == 3 || [self sumODown1] == 3 || [self sumODown2] == 3) {
        winner = 0;
    }
    if([self sumOAcross0] == 3 || [self sumOAcross1] == 3 || [self sumOAcross2] == 3 ) {
        winner = 0;
    }
    if([self sumODiag0] == 3 || [self sumODiag2] == 3 ) {
        winner = 0;
    }
    
    if([self sumXDown0] == 3 || [self sumXDown1] == 3 || [self sumXDown2] == 3) {
        winner = 1;
    }
    if([self sumXAcross0] == 3 || [self sumXAcross1] == 3 || [self sumXAcross2] == 3) {
        winner = 1;
    }
    if([self sumXDiag0] == 3 || [self sumXDiag2] == 3 ) {
        winner = 1;
    }
    
    return winner;
}

@end