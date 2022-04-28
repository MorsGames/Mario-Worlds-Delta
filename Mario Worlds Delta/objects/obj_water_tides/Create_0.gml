/// @description Tides, add it on your underwater stages.

/*
//  This item uses creation code.
//
//  push = Leave it to true to push the player when swimming.
*/

//Whether this can push Mario.
push = false;

//X position
xx = 0;

//Alpha
alpha = 0.2509803921568627;
alphaval = alpha/100;

//Whether this object has a target position
targety = y;

//Animate
image_speed = 0.1;
image_index = 1;

//Set depth
depth = -7;

//Make the tide rise/shrink
alarm[0] = 360;

//Create bubble effects
alarm[1] = 7;

//Create a water surface
water = instance_create(x, y+4, obj_swim);
with (water) {

    image_xscale = room_width;
    image_yscale = room_height;
}

/* */
/*  */
