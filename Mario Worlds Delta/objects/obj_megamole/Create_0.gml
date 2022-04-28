/// @description Mega Mole

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 1;

//How vulnerable is this enemy to the player
stomp = 3;

//How vulnerable is this enemy to Yoshi
edible = 2;

//Death Sprite
deathsprite = sprite_index;

//Animate
image_speed = 0.2;

//Start moving
alarm[10] = 2;

//Make it semisolid on top
mytop = instance_create(x, bbox_top, obj_semisolid_moving);
mytop.image_xscale = 2;

