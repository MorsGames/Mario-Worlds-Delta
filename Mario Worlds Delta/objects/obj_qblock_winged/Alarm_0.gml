/// @description Start moving if inside the view

//If the object is outside the view
if (outside_view(16)) {

    alarm[0] = 1;
    exit;
}

//Otherwise, start moving
else {

    //If the block cannot move back and forth
    if (backnforth == false) {
    
        if (!instance_exists(obj_playerparent))
        || (obj_playerparent.x < x+8)
            hspeed = -1;
        else
            hspeed = 1;
    }
    else {
    
        //Allow moving back and forth
        ready = 1;
    
        //Move towards the player
        if (!instance_exists(obj_playerparent))
        || (obj_playerparent.x < x+8)
            dir = -1;
        else
            dir = 1;
    }
    
    //Set the vertical speed.
    vspeed = 0.5;    
}

