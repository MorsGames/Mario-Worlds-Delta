/// @description Make the platform stop.

if (!headshot) {

    //Round x position
    x = round(x);
    
    //Do not animate
    image_speed = 0;
    image_index = 0;
    
    //Stop horizontal speed
    hspeed = 0;
    
    //Stop offset
    spinoffset = 0;
    
    //Make the platform get stuck
    stuck = true;
}

if (headshot > 0) {

    stuck = false;
    headshot--;
}

