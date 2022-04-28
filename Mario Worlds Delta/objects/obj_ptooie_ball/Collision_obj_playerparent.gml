/// @description Bounce if spinjumping or get hurt

//If the player is above
if (other.bbox_bottom < bbox_top-vspeed+5) {

    //If the player is spinjumping or riding yoshi
    if (global.mount == 1) 
    || (other.jumpstyle == 1) {
    
        //Play 'Stomp' sound
        audio_stop_play_sound(snd_stomp, 0, false);
        
        //Create spinthump effect
        instance_create(other.x, other.bbox_bottom, obj_spinthump);
        
        //Make the player bounce
        with (other) event_user(1);
    }
}

//Otherwise, hurt
else
    with (other) event_user(0);

