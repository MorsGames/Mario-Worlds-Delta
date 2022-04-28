/// @description Make the player bounce in the opposite direction

//If the block has not been bumped and the player is not jumping
if (ready == 0)
&& (other.state != statetype.jump) {
    
    //This block is hit
    ready = 1;

    //Move down
    motion_set(225, 2);
    alarm[0] = 4;

    //Make the player bounce
    with (obj_playerparent) {
    
        //Play 'Trampoline' sound
        audio_stop_play_sound(snd_trampoline, 0, false);

        //Set the motion
        vspeed = -note_boost;
        hspeed = 3;
        
        //Boost jump
        y--;
        
        //Facing direction
        xscale = 1;
        
        //Switch to jump state
        state = statetype.jump;
        
        //Check if the 'Jump' key is pressed and allow variable jumping
        if (input_check(input.action0))
        || (input_check(input.action2))
            jumping = 1;
        else
            jumping = 2;
    }
    
    //Create notes
    with (instance_create(bbox_left, ystart, obj_note)) motion_set(135,1);
    with (instance_create(bbox_right, ystart+16, obj_note)) motion_set(45,1);
}


