/// @description Activate it

//If the detonator is not activated
if (active == 0) {

    //Play 'Switch' sound
    audio_stop_play_sound(snd_switch, 0, false);
    
    //Set frame
    image_index = 1;

    //Activate it
    active = 1;
    
    //Begin detonation
    alarm[0] = 120;
    alarm[1] = 180;
    
    //Make the player jump
    with (obj_playerparent) event_user(1);
}

