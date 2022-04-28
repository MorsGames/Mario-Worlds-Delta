/// @description Yoshi Physics

//Bounce if idle
if (state == yoshistate.idle) {

    //If there's no gravity
    if (gravity == 0) {
    
        //If Yoshi is not underwater
        if (swimming == false)
            vspeed = -1.5;
            
        //Otherwise, make a little bounce
        else
            vspeed = -0.75;
    }
}

//If Yoshi is not being ridden...
if (state != yoshistate.ridden) {

    //Perform default event
    event_inherited();
    
    //Stop horizontal speed
    if (state == yoshistate.idle) {
        
        if (gravity == 0) {
        
            if (hspeed != 0)
                hspeed = 0;
        }
    }
    
    //Set facing direction
    if (hspeed > 0)
        xscale = 1;
    else if (hspeed < 0)
        xscale = -1;
}

//Destroy when outside the room
if (bbox_bottom > room_height+32)
    instance_destroy();

