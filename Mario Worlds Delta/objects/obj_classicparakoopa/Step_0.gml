/// @description Classic Koopa Para-Troopa logic

//Inherit event from parent
event_inherited();

//If not jumping
if (gravity == 0) {
    
    //Boost jump
    y--;
    
    //If swimming
    if (swimming)
        vspeed = -2;
    else
        vspeed = -4;
}

