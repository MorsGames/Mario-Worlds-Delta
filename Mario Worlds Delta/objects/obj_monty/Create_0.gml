/// @description Monty Mole

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 0;

//How vulnerable is this enemy to the player
stomp = 0;

//How vulnerable is this enemy to Yoshi
edible = 0;

//Death Sprite
deathsprite = spr_montymole_dead;

//Stomp sprite
stompsprite = spr_montymole_dead;

//Animate
image_speed = 0.2;

//Start moving
alarm[10] = 2;

