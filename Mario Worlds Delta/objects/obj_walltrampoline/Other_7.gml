/// @description Restart up animation

if (sprite_index == spr_walltrampoline) {

    //If the trampoline is about to launch the player upwards.
    if (ready2 == 1) {
    
        //If the player does exist.
        if (instance_exists(obj_playerparent)) {
        
            //Play 'Trampoline' sound.
            audio_stop_play_sound(snd_trampoline, 0, false);
            
            //Set vertical speed
            obj_playerparent.vspeed = -note_boost;
            
            //Boost Jump
            obj_playerparent.y--;
            
            //Check if 'Shift' is pressed.
            if (input_check(input.action0))
                obj_playerparent.jumping = 1;
            else
                obj_playerparent.jumping = 2;   
        }
    }
    
    //Allow use
    ready = 0;
    alarm[0] = 8;
    
    //Restart animation
    image_speed = 0.8;
    image_index = 0;
    
    //Set the end sprite
    sprite_index = spr_walltrampoline_end;
}
else if (sprite_index == spr_walltrampoline_end) {

    //Do not animate
    image_speed = 0;
    image_index = 0;
    
    //Set the sprite
    sprite_index = spr_walltrampoline;
}

