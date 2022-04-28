/// @description Track Grinder

//Default value
down = false;
state_reset = 0;

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 3;

//How vulnerable is this enemy to the player
stomp = 2;

//How vulnerable is this enemy to Yoshi
edible = 2;

//Animate
image_speed = 0.8;

//Death Sprite
deathsprite = spr_grinder;

//State
state = "IN_LINE";

//Speed
spd = 1.5;

//Origin
xorig = sprite_width/2-1;
yorig = sprite_height/2-1;

//Steps to take per steps
step = 0;

//Whether the engine jumped from a track
ready = 0;

//Direction
direct = 270;

//Play 'Engine' sound
alarm[2] = 7;

//Set up direction based on modifier
if (place_meeting(x, y, obj_up))
    direct = 90;
else if (place_meeting(x, y, obj_left))
    direct = 180;
else if (place_meeting(x, y, obj_right))
    direct = 0;

