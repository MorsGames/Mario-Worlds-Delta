/// @description Missile Bill

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 1;

//How vulnerable is this enemy to the player
stomp = 0;

//How vulnerable is this enemy to Yoshi
edible = 0;

//Death Sprite
deathsprite = spr_missilebill_dead;

//Stomp sprite
stompsprite = spr_missilebill_dead;

//Animate
image_speed = 0;

//Previous direction
lastdir = direction;

//Follow the player
homing = false;
alarm[0] = 60;

