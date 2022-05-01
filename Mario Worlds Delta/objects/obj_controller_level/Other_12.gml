/// @description Begin P-Switch events

//If the switch effect is off
if (switchon == false) {

    //Turn on the switch
    switchon = true;
    
    //Replace items
    pswitch_on();
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

