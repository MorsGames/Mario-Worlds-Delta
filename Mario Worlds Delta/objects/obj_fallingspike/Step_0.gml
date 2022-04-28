/// @description Loose Spike logic

//If the spike is not falling or shaking
if (ready == 0) {

    //If the player is under the spike
    if (instance_exists(obj_playerparent))
    && (obj_playerparent.x > x-72)
    && (obj_playerparent.x < x+88)
    && (obj_playerparent.y > y) {
    
        //Change state
        ready = 1;
        
        //Animate
        image_speed = 1;
        
        //Fall
        alarm[0] = 80;
    }
}
else {

    //If the spike is falling
    if (vspeed > 0) {
    
        //If the spike is in contact with water
        if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_swim, 0, 0))      
        && (vspeed > 2)
            vspeed = 2;
            
        //Otherwise, if the spike is not in contact with water
        else if (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_swim, 0, 0))
        && (vspeed > 4)
            vspeed = 4;
    }

    //Destroy if outside view
    if (outside_view(16))
        instance_destroy()
}

