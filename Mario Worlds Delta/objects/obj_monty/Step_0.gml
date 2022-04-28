/// @description Monty logic

//Inherit event
event_inherited();

//If there's no gravity
if (gravity == 0) {

    //Make sure it can jump again
    if (image_speed == 0) {
    
        //Animate
        image_speed = 0.2;
        
        //Hop again
        alarm[1] = 60;
    }
}

//Otherwise
else {

    image_speed = 0;
    image_index = 0;
}

//Facing direction
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;

