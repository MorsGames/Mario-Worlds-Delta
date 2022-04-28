//Inherit event from parent
event_inherited();

//If not jumping
if (gravity == 0) {

    //Change frame
    image_index = !image_index;
    
    //Manage jumps
    if (jumping < 2) {
        
        //If swimming
        if (swimming)
            vspeed = -2;
        else
            vspeed = -4;
    }
    else {
    
        //If swimming
        if (swimming)
            vspeed = -3;
        else
            vspeed = -6;        
    }
    
    //Boost jump
    y--;
    
    //Manage jumping
    jumping++;
    if (jumping > 2)
        jumping = 0;
}

//Destroy when outside
if (outside_view(16))
    instance_destroy();

