/// @description Egg bomb logic

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
}

//Spin
angle += 10*sign(hspeed);

