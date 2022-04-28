/// @description Hammer Bro.

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to various items?
vulnerable = 0;

//How vulnerable is this enemy to the player?
stomp = 0;

//Whether can go through solid
throughsolid = 0;

//Number of hammers to throw
hammers = 1+random(round(3));

//Whether the hammer bro is throwing a hammer
_throw = 0;

//Death Sprite
deathsprite = sprite_index;

//Stomp Sprite
stompsprite = sprite_index;

//Animate
image_speed = 0.15;

//Reverse horizontal speed.
alarm[1] = 32;

//Jump upwards / downwards.
alarm[2] = 4;

//Set the throwing pose.
alarm[3] = 7;

//Move
alarm[10] = 2;

