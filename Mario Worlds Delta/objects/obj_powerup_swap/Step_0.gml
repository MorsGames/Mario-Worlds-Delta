/// @description Roulette item logic

if (ready == 0) {

    gravity = 0;
    if (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 0, 0)) {
        
        //Out of the block.
        ready = true;
        
        //Set depth
        depth = -2;
        
        //Set horizontal speed.
        hspeed = 0.5;
        
        //If the item is underwater, make it swim
        if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_swim, 0, 0)) {
        
            vspeed = -2;
            swimming = true;
        }
        else
            vspeed = -4;
    }
}

//Otherwise, if there's not a block in position.
else {

    //Inherit default event
    event_inherited();
    
    //Bounce
    if (gravity == 0) {

        //If the item is underwater
        if (swimming == false)
            vspeed = -4;
        
        //Otherwise, make a little bounce
        else
            vspeed = -2;
    }
}

