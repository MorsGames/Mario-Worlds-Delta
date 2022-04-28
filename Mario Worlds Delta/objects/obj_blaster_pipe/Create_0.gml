/// @description Pipe Bullet Blaster

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to items
vulnerable = 99;

//How vulnerable is this enemy to the player
stomp = -1;

//How vulnerable is this enemy to Yoshi
edible = 2;

//Make it semisolid on top
mytop = instance_create(x, bbox_top, obj_semisolid_moving);

