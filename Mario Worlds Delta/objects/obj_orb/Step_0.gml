/// @description Play the countdown sounds and return to map when all conditions are met

//Go to map if the fanfare is not playing
if (ready == 3) {

    if (ready2 == 0)
    && (global.time == 0)
    && (!audio_is_playing(snd_bossclear)) {
    
        //Begin world map return sequence
        ready2 = 1;
        
        //Return to world map
        alarm[3] = 120;
    }
}

//Play 'Count' sounds
if (ready == 1) {

    //If the timer is greater than 0
    if (global.time > 0) {
    
        ready = 2;
        audio_stop_play_sound(snd_count, 0, false);
        audio_stop_play_sound(snd_count2, 0, true);
    }
    else    
        ready = 3;
}
else if ((global.time < 1) && (ready == 2)) {

    ready = 3;
    audio_stop_sound(snd_count2);
    audio_stop_play_sound(snd_count3, 0, false);
}    

//Inherit event from parent
event_inherited();

