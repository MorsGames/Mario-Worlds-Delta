/// @description Horizontal Cheep-Cheep

//Inherit event
event_inherited();

//How vulnerable is this enemy to various items?
vulnerable = 0;

//How vulnerable is this enemy to the player?
stomp = 2;

//How vulnerable is this enemy to yoshi?
edible = 0;

//Facing direction
xscale = 1;

//Animate
image_speed = 0.125;

//Sets turning endpoint
prevswim = 0;
xx = x;

//Death Sprite
deathsprite = spr_cheepcheep_dead;

//Flopping facing direction
flopdir = 1;

//Start moving or flop
if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_swim, 0, 0))
    alarm[10] = 2;

