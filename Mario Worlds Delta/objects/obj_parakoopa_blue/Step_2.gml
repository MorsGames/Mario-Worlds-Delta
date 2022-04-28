/// @description Set up facing direction

//If moving right and facing direction is not right
if ((x < xstart) && (xscale != 1)) 
|| ((x > xstart) && (xscale != -1)) {

    //Set turning sprite
    sprite_index = spr_koopa_blue_turn;
    
    //Set facing direction
    if (x < xstart)
        xscale = 1;
    else
        xscale = -1;
    
    //Animate
    image_speed = 0.3;
    image_index = 0;
}

