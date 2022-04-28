/// @description Blue Beach Koopa

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

//Death Sprite
deathsprite = spr_beachkoopa_blue_dead;

//Stomp sprite
stompsprite = spr_beachkoopa_blue_sq;

//Object it is holding
idd = noone;

//Kick State
kicky = 0;

//Animate
image_speed = 0.15;

//Sliding
slide = false;
alarm[11] = 1;

//Smoke FX
alarm[1] = 1;

//Move towards the player
alarm[10] = 2;
    
//Item contact values
boxl = -1;
boxr = 8;
boxt = -1;
boxb = 12;

//If the item is overlapping the koopa
initem = false;
dir = -1;

