/// @description Fire Snake logic

//Inherit event from parent
event_inherited();

//If there's no gravity
if (gravity == 0) {

    //Stop horizontal speed
    hspeed = 0;

    //If jumping
    if (jumping == 1) {
    
        //Stop jumping
        jumping = 0;
        
        //Jump again
        alarm[0] = 90;
    }
}

