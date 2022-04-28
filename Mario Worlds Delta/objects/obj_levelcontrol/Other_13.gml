/// @description Begin Gray P-Switch events

//Activate Gray P-Switch effects and reset coins if a silver switch was not activated before
if (gswitchon == false) {

    //Remember the effect was activated
    gswitchon = true;
    
    //Turn munchers into coins
    with (obj_muncher) event_user(0);
    
    //Reset collected coins
    if (global.scoins > 0)
        global.scoins = 0;
}

//Stop music
alarm[1] = 1;

//Stop invincibility music
audio_stop_sound(bgm_starman);

//Stop P-Switch music if it is playing...
if (audio_is_playing(bgm_pswitch)) {

    audio_stop_sound(bgm_pswitch);
}

//...and play it again
audio_loop_sound(bgm_pswitch, 468000, 535500, 44100, 1);

