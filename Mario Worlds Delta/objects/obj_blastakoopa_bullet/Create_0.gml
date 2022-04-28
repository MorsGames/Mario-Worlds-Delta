/// @description Blastakoopa Bullet

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 1;

//How vulnerable is this enemy to the player
stomp = 0;

//How vulnerable is this enemy to Yoshi
edible = 0;

//Death Sprite
deathsprite = sprite_index;

//Stomp sprite
stompsprite = sprite_index;

//Animate
image_speed = 0;

//Previous direction
lastdir = direction;

//Follow the player
homing = false;
alarm[0] = 30;

//Begin flash seq
alarm[1] = 180;

//End flash sequence
alarm[2] = 360;

//Blow up
alarm[3] = 420;

