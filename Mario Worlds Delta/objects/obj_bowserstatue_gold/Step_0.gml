/// @description Golden Bowser Statue logic

//Inherit event
event_inherited();

//Set up the facing direction if in ground and make it jump again
if (gravity == 0) {

    //If the object jumped
    if (jumping == 2) {
    
        //Stop horizontal movement
        hspeed = 0;
    
        //End jump
        jumping = 0;
        
        //Jump again
        alarm[0] = 100;
    }
}

//Otherwise, end jump
else {

    xscale = 1*sign(hspeed);
    if (jumping == 1) && (vspeed > 0) {
    
        jumping = 2;
        image_index = 0;
    }
}

