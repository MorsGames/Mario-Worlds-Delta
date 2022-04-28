/// @description Note block bumping

//If the block can be bumped
if (!ready) {

    //If the player bumps from above
    if (collision_rectangle(bbox_left, bbox_top-1, bbox_right, bbox_top,obj_playerparent,0,0)) {
        
        //This block is hit
        ready = 1;

        //Move down
        vspeed = 2.25;
        alarm[0] = 4;

        //Make the player bounce
        with (obj_playerparent) {
        
            //Play 'Trampoline' sound
            audio_stop_play_sound(snd_trampoline, 0, false);

            //Set the vertical speed
            vspeed = -note_boost;
            
            //Boost jump
            y--;
            
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
        with (instance_create(bbox_left, bbox_top, obj_note)) motion_set(135,1);
        with (instance_create(bbox_right, bbox_top, obj_note)) motion_set(45,1);
        
        //Make an item appear downwards
        event_user(1);
    }
}

