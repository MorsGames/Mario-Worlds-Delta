/// @description Dry Bones

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to various items?
vulnerable = 1;

//How vulnerable is this enemy to the player?
stomp = 4;

//How vulnerable is this enemy to yoshi?
edible = 2;

//Death Sprite
deathsprite = spr_drybones;

//Turn around at enemies?
enemyturn = false;

//Set normal sprite
sprite_index = spr_drybones;

//Animate
image_speed = 0.125;

//Start moving
alarm[10] = 2;

