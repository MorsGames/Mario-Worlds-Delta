/// @description Rocky Wrench

//How vulnerable is this enemy to various items?
vulnerable = 0;

//How vulnerable is this enemy to the player?
stomp = 3;

//How vulnerable is this enemy to yoshi?
edible = 0;

//Facing direction
xscale = 1;

//Start moving
alarm[0] = 2;

//Do not animate
image_speed = 0;

//Death Sprite
deathsprite = spr_rockywrench_dead;

//Stomp Sprite
stompsprite = spr_rockywrench_dead;

//Create solid collision
mytop = instance_create(x, bbox_top, obj_semisolid_moving);

//Do not swim
swimming = false;

