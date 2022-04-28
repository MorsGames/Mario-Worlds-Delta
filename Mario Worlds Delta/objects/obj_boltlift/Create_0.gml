/// @description Bolt Lift

//Do not animate
image_speed = 0;

//Create a solid
mytop = instance_create(x, y, obj_boltlift_top);

//Check if stuck
stuck = 0;

//Check if spinning
isspin = 0;

//Check if headshot
headshot = 0;

//Spin offset
spinoffset = 0;

//Player fall speed
playerfallspeed = 0.25;

