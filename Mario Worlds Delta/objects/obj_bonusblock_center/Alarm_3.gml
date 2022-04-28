/// @description End bonus game if there's no 1UPs left

if (!instance_exists(obj_1up)) {

    //Play 'Bonus End' sound
    audio_stop_play_sound(snd_bonusend, 0, false);
    
    //Stop music
    with (obj_levelcontrol) {
    
        musicdisable = true;
        alarm[1] = 1;
    }
    
    //Disable player controls
    obj_playerparent.cleared = 1;
}
else
    alarm[3] = 120;

