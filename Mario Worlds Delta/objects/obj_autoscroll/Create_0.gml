/// @description Make the level scroll automatically.

/*
**  This item uses creation code!
**
**  mypath    = Path that the autoscroll object will use. Build it on the paths folder.
**  maxspd    = Maximum autoscroll speed.
**  airship   = To make the object wave up/down like if you were on a airship level.
*/

//Default variables
mypath = noone;
maxspd = 0.5;
airship = 0;

//Make the player able to die.
alarm[0] = 90;

//Handle airship offset.
alarm[1] = 1;

//Start moving.
alarm[2] = 1;

//Mode
mode = 0;

//Make mario die
candie = 1;

//Set the airship speed
airshipspeed = 0;

//Set the airship offset
airshipoffset = 0;

/* */
/*  */
