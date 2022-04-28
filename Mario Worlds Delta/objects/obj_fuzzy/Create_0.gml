/// @description Track Fuzzy

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 99;

//How vulnerable is this enemy to the player
stomp = 2;

//How vulnerable is this enemy to Yoshi
edible = 2;

//Animate
image_speed = 0.2;

//Start moving
alarm[10] = 2;

//State
state = "IDLE";

//Speed
spd = 1.5;

//Origin
xorig = sprite_width/2-1;
yorig = sprite_height/2-1;

//Steps to take per steps
step = 0;

//Direction
direct = 270;

//Whether the platform jumped from a track
ready = 0;

