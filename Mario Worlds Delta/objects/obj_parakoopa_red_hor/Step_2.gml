/// @description Set up facing direction

//If moving right and facing direction is not right
if ((hspeed > 0) && (xscale != 1)) 
|| ((hspeed < 0) && (xscale != -1)) {

    //Set turning sprite
    sprite_index = spr_koopa_red_turn;
    
    //Set facing direction
    xscale = 1*sign(hspeed);
    
    //Animate
    image_speed = 0.3;
    image_index = 0;
}

