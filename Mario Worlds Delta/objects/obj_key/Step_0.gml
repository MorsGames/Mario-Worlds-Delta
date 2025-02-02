/// @description Key logic

//If the brick is not held
if (!held) {

    //Inherit event from parent
    event_inherited();
    
    //Grab it if the player is above    
    if (input_check_pressed(input.action1))
    && (collision_rectangle(bbox_left, bbox_top-1, bbox_right, bbox_top-1, obj_playerparent, 0, 0))
    && (can_hold()) {
    
        //Make the player hold it
        obj_playerparent.holding = 1;
        
        //Hold
        held = 1;
        
        //Stop movement
        speed = 0;
        gravity = 0;
    }
    
    //Keep semisolid in position
    if (instance_exists(mytop)) {

        mytop.x = x-8;
        mytop.y = bbox_top+1;
    }
}

//Otherwise, keep semisolid away
else {

    //Make semisolid go away
    if (instance_exists(mytop)) {
    
        mytop.x = -1000;
        mytop.y = -1000;
    }
    
    //Face against the player
    if (instance_exists(obj_playerparent)) {
        
        if (obj_playerparent.xscale == 1)
            image_single = 0;
        else
            image_single = 1;
    }
}

