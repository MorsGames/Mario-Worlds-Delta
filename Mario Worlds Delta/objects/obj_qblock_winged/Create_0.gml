/// @description Winged Item Block

/*
**  This item uses creation code!
**
**  backnforth = Whether if the block moves back and forth
**      true = Enable
**      false = Disable
*/

//Default variables
backnforth = false;

//Item held on block
sprout = itemtype.coin;

//Animate
image_speed = 0.15;

//Whether the block is ready
ready = 0;

//Direction
dir = -1;

//Start moving
alarm[0] = 2;

/* */
/*  */
