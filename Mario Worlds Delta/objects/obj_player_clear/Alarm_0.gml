/// @description Play 'Clear BGM' and set fireworks

if (global.time -(floor(global.time/10)*10) == 6)
|| (global.time -(floor(global.time/10)*10) == 3)
|| (global.time -(floor(global.time/10)*10) == 1) {

    //Plays 'Special Clear' theme
    audio_stop_play_sound(snd_goalgate_special, 0, false);
    
    //Set amount of fireworks
    if (global.time -(floor(global.time/10)*10) == 6)
        fireworks = 6;
    else if (global.time -(floor(global.time/10)*10) == 3)
        fireworks = 3;
    else if (global.time -(floor(global.time/10)*10) == 1)
        fireworks = 1;
}
else
    audio_stop_play_sound(snd_goalgate_2, 0, false);

