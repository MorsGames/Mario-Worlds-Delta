/// @description Classic Red Koopa Troopa

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 0;

//How vulnerable is this enemy to the player
stomp = 0;

//How vulnerable is this enemy to Yoshi
edible = 1;

//Death Sprite
deathsprite = spr_classickoopa_red_dead;

//Animate
image_speed = 0.15;

//Start moving
alarm[10] = 2;

