/// @description Beach Koopa

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 0;

//How vulnerable is this enemy to the player
stomp = 0;

//How vulnerable is this enemy to Yoshi
edible = 0;

//Whether this enemy is stunned
ready = 1;

//Whether this enemy is jumping
jumping = 0;

//Death Sprite
deathsprite = spr_beachkoopa_dead;

//Stomp sprite
stompsprite = spr_beachkoopa_sq;

//Animate
image_speed = 0.15;

//Start moving
alarm[10] = 2;

