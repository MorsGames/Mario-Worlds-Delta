/// @description Track Platform

//Do not animate
image_speed = 0;
image_index = 0;

//Values
prevspd = 0;
prevmotion = 0;

//Start moving if allowed
if (global.onoff_block == 0)
    alarm[10] = 2;

