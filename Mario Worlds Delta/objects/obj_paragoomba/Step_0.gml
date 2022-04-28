/// @description Mama Paragoomba logic

//If the goomba is ascending.
if (flying = 1) {

    //Set the vertical speed.
    vspeed = -2;
    gravity = 0;
    
    //Stop when nearby the top boundary.
    if (y < __view_get( e__VW.YView, 0 )+48) {
    
        //Follow Mario
        flying = 2;
        
        //Set the vertical speed
        vspeed = 0.25;
        
        //Do stuff
        alarm[2] = 24;
        alarm[3] = 48;
        
        //End flight
        alarm[4] = 240;
    }
}

//Otherwise, if the goomba ascended enough.
else if (flying == 2) {

    //If the player does not exist or it's at the left
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x) {
    
        hspeed -= 0.05;
        if (hspeed < -2)
            hspeed = -2;
    }
    else {
    
        hspeed += 0.05;
        if (hspeed > 2)
            hspeed = 2;
    }
}

//Otherwise, use the default event.
else {

    //Inherit default script
    event_inherited();
    
    //Allow flight again
    if (flying == 3) {
    
        flying = 0;
        alarm[1] = 100;
    }
}

//Wing animation
if ((flying == 0) || (flying == 3)) {

    if ((alarm[1] > -1) && (alarm[1] < 50))
        wing_anim = 1;
    else {
    
        if (flying == 3)
            wing_anim += 0.15;
        else
            wing_anim = 0;
    }
}
else
    wing_anim += 0.3;

