/// @description Fire Bro.

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to various items?
vulnerable = 0;

//How vulnerable is this enemy to the player?
stomp = 0;

//Whether the fire bro is about to throw a fireball
_throw = 0;

//Previous hspeed
prevhsp = 0;

//Previous alarm
prevalm = 0;

//Death Sprite
deathsprite = sprite_index;

//Stomp Sprite
stompsprite = sprite_index;

//Animate
image_speed = 0.15;

//Reverse horizontal speed.
alarm[1] = 32;

//Jump upwards / downwards.
alarm[2] = 152;

//Set the throwing pose.
alarm[3] = 17;

