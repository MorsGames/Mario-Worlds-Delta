/// @description An enemy that has been killed

//Do not animate
image_speed = 0;
image_index = 0;

//Set gravity
gravity = 0.2;

//Is swimming
swimming = 0;

//Angle
angle = 0;

//If underwater
if (place_meeting(x, y, obj_swim)) {

    //Set swimming gravity
    gravity = 0.1;
    
    //Set swimming state
    swimming = 1;
}

