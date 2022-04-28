/// @description Super Parakoopa logic

//Inherit event from parent
event_inherited();

//If not jumping
if (gravity == 0) {
    
    //Boost jump
    y--;
    
    //If swimming
    if (swimming)
        vspeed = -3;
    else
        vspeed = -6;
}

