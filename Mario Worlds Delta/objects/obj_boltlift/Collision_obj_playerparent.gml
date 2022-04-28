/// @description This collision happens if the player jumps onto the platform.

//If Mario's vertical speed is lower than 0.25 or there's a solid on the way.
if ((obj_playerparent.vspeed < playerfallspeed) || (place_meeting(x , y, obj_solid))) {

    //If the solid is nearby
    if (mytop.touchleft) {
    
        //Animate
        image_speed = 0.5;
        
        //Set the horizontal speed
        hspeed = 0.25;
        
        //Stop it
        alarm[0] = 30;
    }
    
    //Exit this event
    exit;
}

//Check Mario's y
if ((obj_playerparent.y + (-sprite_get_height(obj_playerparent.sprite_index)) < y) && (!place_meeting(x, y, obj_boundary_top))) {

    //If the platform is not spinning and not stuck on a solid.
    if ((!isspin) && (!stuck)) {
    
        alarm[0] = -1;
        isspin = true;
    }
    
    //Animate
    image_speed = 0.5;
    
    //Set the horizontal speed
    hspeed = 0.25;
    
    //Stop it
    alarm[0] = 30;
}

