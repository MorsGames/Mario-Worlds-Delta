/// @description Hammer Bro.

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to various items?
vulnerable = 0;

//How vulnerable is this enemy to the player?
stomp = 0;

//Death Sprite
deathsprite = sprite_index;

//Stomp Sprite
stompsprite = sprite_index;

//Animate
image_speed = 0.1;

//Check if jump
jump = 0;

//Remember prev.hspeed
prevhsp = 0;
prevalm = 0;

//Turn around
alarm[0] = 32;

//Jump
alarm[1] = 302;

//Set the throwing frame.
alarm[3] = 62;

//Start moving
alarm[10] = 2;

