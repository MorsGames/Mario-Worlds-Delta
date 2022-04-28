/// @description Thwimp logic

//Inherit event
event_inherited();

//Animate
if (gravity > 0) {

    //If jumping and moving down, wait until floor is reached
    if (vspeed > 0)
    && (jumping == 1)
        jumping = 2;
}
else {

    if (jumping == 2) {
    
        //Play 'Bump' sound
        audio_play_sound(snd_bump, 0, false);
    
        //Stop horizontal speed
        hspeed = 0;
        
        //End jump
        jumping = 0;
        
        //Jump again
        alarm[0] = 100;
    }
}


