/// @description Restart up animation

if (sprite_index == spr_trampoline_timed) {

    //If the spring is about to launch the player upwards.
    if (s_ready == 1) {
    
        //If the player does exist.
        if (instance_exists(obj_playerparent)) {
        
            //Play 'Trampoline' sound
            audio_stop_play_sound(snd_trampoline, 0, false);
            
            //With the player
            with (obj_playerparent) {
            
                //Set vertical speed
                vspeed = -trampoline_boost;
                    
                //Boost jump
                y -= 8;
                
                //Allow variable jumping if 'Shift' or 'Space' is pressed
                if (input_check(input.action0))
                || (input_check(input.action2))
                    jumping = 1;
                else
                    jumping = 2;
            }
        }
    }
    
    //Allow use
    ready = 0;
    alarm[0] = 8;
    
    //Restart animation
    image_speed = 1;
    image_index = 0;
    
    //Set the end sprite
    sprite_index = spr_trampoline_timed_end;
}
else if (sprite_index == spr_trampoline_timed_end) {

    //Do not animate
    image_speed = 0;
    image_index = 0;
    
    //Set the sprite
    sprite_index = spr_trampoline_timed;
}

