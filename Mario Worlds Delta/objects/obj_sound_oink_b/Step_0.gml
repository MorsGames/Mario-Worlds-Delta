/// @description Manage scale

if (ready == 0) {

    scale += 0.1;
    if (scale > 1) {
    
        ready = 1;
        scale = 1;
    }
}
else if (ready == 1) {

    //If the pig is nearby it's start position bounce
    if (y > ystart) {
    
        //Snap into position
        y = ystart;
        
        //Set vertical speed
        if (vspeed > 0.5)
            vspeed = -vspeed/2;
        else {
        
            gravity = 0;
            vspeed = 0;
            ready = 2;
            alarm[0] = 32;
        }
    }
}
else if (ready == 3) {

    scale -= 0.05;
    if (scale < 0.05)
        instance_destroy();
}

