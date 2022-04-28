/// @description Start hopping

//If the goomba is on the ground
if (gravity == 0) {

    //Start jumping
    jumping = 1;
    
    //Set the vertical speed
    if (swimming == false)
        vspeed = -2.5;
    else
        vspeed = -1.25;
}

//Otherwise, wait
else
    alarm[1] = 10;

