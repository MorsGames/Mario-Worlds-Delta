/// @description Make the level scroll automatically.

/*
**  This item uses variable definitions
**
**  mypath    = Path that the autoscroll object will use. Build it on the paths folder.
**  max_speed = Maximum autoscroll speed.
**  airship   = To make the object wave up/down like if you were on a airship level.
*/

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
