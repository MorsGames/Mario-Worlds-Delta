/// @description Yoshi Platform

//Do not animate
image_speed = 0;

//If the player is not riding a yoshi, animate it
if (global.mount == 0) {

    image_speed = 0.15;
    image_index = 1;
}

//Make it solid
mytop = instance_create(xstart, ystart, obj_semisolid);

