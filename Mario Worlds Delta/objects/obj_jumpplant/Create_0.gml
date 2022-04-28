/// @description Jumping Piranha Plant

/*
**  This item uses creation code!
**
**  type = Whether the plant should spit fire upon reaching the top area
**      0: No Fire
**      1: Fire
*/

//Inherit event from parent
event_inherited();

//Default variable
type = 0;

//How vulnerable is this enemy to items
vulnerable = 0;

//How vulnerable is this enemy to the player
stomp = 2;

//How vulnerable is this enemy to Yoshi
edible = 0;

//Stem animation
anim = 0;

//Whether the plant has fired
fire = 0;

//Whether the plant is jumping
ready = 0;

//Depth
depth = 10;

//Animate
image_speed = 0.15;

//Start moving
alarm[0] = 1;

/* */
/*  */
