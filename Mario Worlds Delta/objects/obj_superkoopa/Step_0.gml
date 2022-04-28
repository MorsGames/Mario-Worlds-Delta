/// @description Super Koopa Logic

//If not flying
if (jumping < 2) {

    //Inherit event
    event_inherited();
    
    //If jumping
    if (jumping == 1) 
    && (vspeed > 0)
    && (y > jumpy-16) {
    
        //Stay in position
        jumping = 2;
        y = jumpy-16;
        
        //Stop vertical movement
        vspeed = 0;
        gravity = 0;
    }
}

//Set the scale
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;

