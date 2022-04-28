/// @description Blue Super Koopa

/*
**  This item uses creation code!
**
**  feather = Drop a feather after stomping
*/

//Default variable
feather = 0;

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 0;

//How vulnerable is this enemy to the player
stomp = 0;

//How vulnerable is this enemy to Yoshi
edible = 1;

//Death Sprite
deathsprite = spr_superkoopa_blue_dead;

//Stomp Sprite
stompsprite = spr_superkoopa_blue_dead;

//Animate
image_speed = 0.3;

//Previous y position
jumpy = y;

//Whether this enemy jumped
jumping = 0;

//Makes cape flash if this enemy gives a feather
isflashing = 0;
alarm[2] = 2;

//Start moving
alarm[10] = 2;

/* */
/*  */
