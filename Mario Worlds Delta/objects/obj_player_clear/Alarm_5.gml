/// @description Show 'Course Clear' text

with (obj_hud) {
    
    //Set the time to show in the course clear frame
    time = global.time;
    
    //Give an extra life if the time ends in double zero
    if (time mod 100 == 0) {
        
        //Play '1-UP' sound
        audio_stop_play_sound(snd_1up, 0, false);
        
        //Give extra life
        lives++;    
    }
    
    //Show or not show bonus stars
    if (global.bonusadd == 0)
        clear = 1;
    else
        clear = 2;
}

