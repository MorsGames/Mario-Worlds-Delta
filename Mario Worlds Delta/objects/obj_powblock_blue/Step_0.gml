/// @description Held blue brick logic

//If the brick is not held
if (!held) {

    //Previous horizontal speed
    prevhspeed = hspeed;    
    
    //Inherit event
    event_inherited();
    
    //If kicked
    if (ready == 1) {
    
        //If the direction changes or the object makes contact with the ground
        if (hspeed != prevhspeed) 
            event_user(0);
            
        //Check for ground
        if (gravity == 0)
            event_user(0);
    }
    
    //Grab it if the player is above    
    if (input_check_pressed(input.action1))
    && (collision_rectangle(bbox_left, bbox_top-1, bbox_right, bbox_top-1, obj_playerparent, 0, 0))
    && (can_hold() == true) {
    
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

    //Cancel kick
    ready = false;

    //Make semisolid go away
    if (instance_exists(mytop)) {
    
        mytop.x = -1000;
        mytop.y = -1000;
    }
}

//Cancel bounce if kicked
if (ready == true)
    bouncy = false;
else
    bouncy = true;

