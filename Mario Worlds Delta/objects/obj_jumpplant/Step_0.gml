/// @description Jumping piranha plant logic

//If the piranha plant jumped outside the pipe
if (ready == 0) 
&& (y < ystart-16) {

    //Cap vertical speed
    if (vspeed > 0.5) {
    
        vspeed = 0.5;
        ready = 1;
    }
    
    //Slowdown till the plant stops
    vspeed += 0.025;
    
    //If the piranha plant has stopped
    if ((y < ystart-80) && (type == 1)) {
    
        //Do not animate
        image_speed = 0;
        image_index = 0;
        
        //If the piranha plant can shoot fireballs, do so
        if ((fire == 0) && (y < ystart-88)) {
        
            //Fire
            fire = 1;
            alarm[1] = 1;
        }
    }
}

//Otherwise, if the piranha plant is descending and it's entering the pipe.
else if ((ready == 1) && (y > ystart)) {

    //Snap in position
    vspeed = 0;
    y = ystart;
    
    //Jump again
    alarm[0] = 60;
    
    //Allow to jump
    ready = 0;
    
    //Allow to fire again
    fire = 0;
}

//Animate step twice faster
anim += 0.3;

//Resume animation
if (ready == 1)
&& (image_speed == 0)
    image_speed = 0.15;

