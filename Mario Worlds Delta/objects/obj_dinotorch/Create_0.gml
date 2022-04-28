/// @description Dino Torch

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 0;

//How vulnerable is this enemy to the player
stomp = 0;

//How vulnerable is this enemy to Yoshi
edible = 0;

//Death Sprite
deathsprite = spr_dinotorch_dead;

//Stomp sprite
stompsprite = spr_dinotorch_sq;

//Whether the object is blowing fire
flame = noone;

//Animate
image_speed = 0.15;

//Start moving
alarm[10] = 2;

