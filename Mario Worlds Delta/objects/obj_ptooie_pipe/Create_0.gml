/// @description Pipe P-Tooie

//Inherit event from parent
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
image_speed = 0;

//Blow the ball
alarm[0] = 2;

//Generate bubble
alarm[1] = 2;

//Whether the object is blowing
ready = false;

//Distance between the ball and the ptooie
dist = bbox_top+16;

//Create the blown ball
myball = instance_create(x, bbox_top-24, obj_ptooie_ball);
with (myball) 
    parent = other.id;

