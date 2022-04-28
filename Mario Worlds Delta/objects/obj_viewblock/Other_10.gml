/// @description Create the shown powerup

//Do not show
ready2 = true;

//Create item with the given sprite
with (instance_create(xstart+8, ystart, obj_powerup_swap)) {

    //Obtain sprite
    sprite_index = other.swap;
    
    //Change sprite
    alarm[0] = other.alarm[2];
    
    //Animation speed
    if (other.swap == spr_star)
        image_speed = 0.3;
    else
        image_speed = 0;
}

