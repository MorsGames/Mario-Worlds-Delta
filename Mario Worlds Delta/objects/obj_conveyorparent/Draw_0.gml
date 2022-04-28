/// @description Draw the conveyor belt

//Update anim
anim += 0.1;

//If the conveyor does not change with on/off blocks
if (toggle == false)    
    event_user(1);

//Otherwise, if the conveyor can change its direction with on/off blocks
else if (toggle == true) {

    //Set up the palette
    pal_swap_set(spr_palette_conveyor, 1+global.onoff_block);
    
    //Draw conveyor
    event_user(1);
    
    //Reset shader
    pal_swap_reset();
}

