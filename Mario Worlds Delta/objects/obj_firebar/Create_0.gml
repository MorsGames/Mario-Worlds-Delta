/// @description Firebar

/*
**  This item uses creation code!
**
**  clockwise   = Direction of the discs
**      1: Right
**      -1: Left
**  length      = Length of the firebar (Not counting the middle one)
**  myspeed     = Speed of the firebar
*/

//Default variables
clockwise = 1;
length = 6;
myspeed = 1.5;

//Distance
dist = 8;

//Angle
angle = 0;

//Frame
frame = 0;

//Create firebars
alarm[0] = 2;

//Make it solid
mysolid = instance_create(x, y, obj_solid);

/* */
/*  */
