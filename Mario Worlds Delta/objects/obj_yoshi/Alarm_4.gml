/// @description Make flying noises for Yoshi when flying

if (flying > 0) {

    //Play 'Fly' sound
    audio_stop_play_sound(snd_fly, 0, false)
    
    //Repeat the process
    if (flying == 1)
        alarm[4] = 8;
    else
        alarm[4] = 24;
}

