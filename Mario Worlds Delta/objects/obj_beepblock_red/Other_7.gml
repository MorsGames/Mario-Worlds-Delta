/// @description End animation

//If the block does animate more
if (beep > 0) {

    //Decrement beeps
    beep--;
    
    //Play 'Beep' sound, if not outside view
    if (!outside_view(16))
        audio_stop_play_sound(snd_beep, 0, false);
}
    
//Otherwise, if the block cannot animate more
else {

    //Play 'Clack' sound if not outside the view
    if (!outside_view(16)) {
    
        audio_stop_play_sound(snd_clack, 0, false);
    }
    
    //If solid
    if (sprite_index == spr_beepblock_red) {
    
        //Change into a empty block
        sprite_index = spr_beepblock_empty;
        
        //Destroy solid
        with (mysolid) instance_destroy();
    }
    
    //Otherwise, if not solid
    else {
    
        //Change into a solid block
        sprite_index = spr_beepblock_red;
        
        //Create solid
        mysolid = instance_create(x, y, obj_solid);
    }
    
    //Reset beeps
    beep = 2;
    
    //Reset timer
    alarm[0] = 240;
    
    //Do not animate
    image_speed = 0;
    image_index = 0;
}

