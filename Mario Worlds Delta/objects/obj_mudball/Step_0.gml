/// @description Mudball logic

//Inherit event from parent
event_inherited();

//If not jumping
if (gravity == 0) {
    
    //Boost jump
    y--;
    
    //If swimming
    if (swimming)
        vspeed = -1;
    else
        vspeed = -2;
}

//Destroy when outside
if (outside_view(16))
    instance_destroy();

