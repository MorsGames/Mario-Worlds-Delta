/// @description Start moving based on modifiers

//Go up
if (place_meeting(x,y,obj_up))
    vspeed = -0.5;

//Go down
else if (place_meeting(x,y,obj_down))
    vspeed = 0.5;

//Go left
else if (place_meeting(x,y,obj_left))
    hspeed = -0.5;

//Go right
else if (place_meeting(x,y,obj_right))
    hspeed = 0.5;

