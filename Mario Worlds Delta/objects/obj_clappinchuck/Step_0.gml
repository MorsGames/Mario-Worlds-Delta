/// @description Clappin' Chuck logic

if (hp == 3) {

    //Floor collision
    event_user(4);
    
    //If clapping
    if (clap == 1) {

        //If moving down
        if (vspeed > 0) {
        
            //Play 'Pop' sound
            audio_play_sound(snd_pop, 0, false);
            
            //End clap
            clap = 0;
            
            //Set clapping frame
            image_index = 1;
        }        
    }
    
    //Gravity
    if (gravity > 0) {
    
        //Make sure it gets low gravity when jumping
        if (sprite_index == spr_clappinchuck_jump)
            gravity = 0.15;
    }
    
    //Otherwise, if not jumping
    else if (gravity == 0) {
    
        //If the jumping frame is used
        if (sprite_index == spr_clappinchuck_jump) {
        
            //Set the regular sprite
            sprite_index = spr_clappinchuck;
            
            //Jump again
            alarm[0] = 15;
        }
    }
    
    //Face towards the player
    event_user(8);
}
else
    event_inherited();

