/// @description A balance platform, not suitable for plumbers over 80 kg.

//Do not animate
image_speed = 0;
image_index = 0;

//Prevent the object from falling too fast.
vspeedmax = 1;

//Set the parent of the other platform.
parent = noone;

//Make them fall
ready = 0;

//Create a rope that hangs both platforms.
rope = noone;

//Create the rope
alarm[1] = 3;

