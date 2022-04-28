/// @description Thwimp

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 3;

//How vulnerable is this enemy to the player
stomp = 2;

//How vulnerable is this enemy to Yoshi
edible = 2;

//Whether the thwimp is moving
ready = 0;

//Whether the thwimp is jumping
jumping = 0;

//Death Sprite
deathsprite = spr_thwimp;

//Image Speed
image_speed = 0;

//Jump
alarm[0] = 100;

//Set jumping direction
alarm[10] = 2;

