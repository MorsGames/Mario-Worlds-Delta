/// @description Move

//If not moving
if (vspeed == 0) {

    //If there's an up arrow in position
    if (collision_rectangle(bbox_left, y, bbox_right, y+15, obj_up, 0, 0))
        vspeed = -0.25;
        
    //Otherwise, if there's an down arrow
    else if (collision_rectangle(bbox_left, y, bbox_right, y+15, obj_down, 0, 0))
        vspeed = 0.25;
}

