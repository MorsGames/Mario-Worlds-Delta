/// @description Single ferris platform

/*
//  This item uses creation code.
//
//  platspr     = Sprite of the platforms
//  turn        = Set the direction of the platforms
//      1       =       Clockwise
//      -1      =       Counter-Clockwise
//
//  amount      = Amount of platforms
//  distance    = Distance between platform and center
*/

//Default values
platspr = spr_platform_ferris_48;
turn = 1;
amount = 3;
distance = 48;

//Platform speed
spd = 1;

//Platform angle
angle = 45;

//Create platforms
alarm[0] = 2;

//Activate platforms
active = false;

/* */
/*  */
