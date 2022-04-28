/// @description Gargantua parakoopa logic

//Inherit event from parent
event_inherited();

//Bounce
if (gravity == 0) {

    //If the item is underwater
    if (swimming == false)
        vspeed = -4;
        
    //Otherwise, make a little bounce
    else
        vspeed = -2;
}

