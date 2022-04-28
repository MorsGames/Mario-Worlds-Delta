/// @description Spike

/*
**  This item uses creation code!
**
**      static = To remain in position and look towards the player.
*/

//Default variables
_static = 0;

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 0;

//How vulnerable is this enemy to the player
stomp = 0;

//How vulnerable is this enemy to Yoshi
edible = 0;

//Death Sprite
deathsprite = spr_spike_dead;

//Stomp sprite
stompsprite = spr_spike_dead;

//Is this spike holding a ball
myball = noone;

//Animate
image_speed = 0.15;

//Start moving
alarm[10] = 2;

/* */
/*  */
