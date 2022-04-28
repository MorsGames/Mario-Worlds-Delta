/// @description Decrement loops

//If blinking
if (sprite_index == spr_platform_track_blue_b) {

    //Do not animate
    image_speed = 0;
    image_index = 0;
    
    //If the block can not warn anymore, destroy
    if (loops == 0)
        alarm[1] = 30;
        
    //Otherwise
    else {
    
        alarm[0] = 30;
        loops--;
    }
}

