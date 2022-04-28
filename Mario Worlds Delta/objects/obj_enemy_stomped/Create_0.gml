/// @description An enemy that has been stomped

//Do not animate
image_speed = 0;
image_index = 0;

//Set gravity
gravity = 0.2;

//Is swimming
swimming = 0;

//If underwater
if (place_meeting(x, y, obj_swim)) {

    swimming = 1;
    gravity = 0.1;
}

