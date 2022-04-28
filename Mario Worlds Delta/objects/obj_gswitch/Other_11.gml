/// @description Press the Gray P-Switch

if (sprite_index == spr_gswitch) {

    //Play 'Switch' sound
    audio_stop_play_sound(snd_switch, 0, false);
    
    //Make the camera shake
    init_shake(snd_switch);
    
    //Set the sprite
    sprite_index = spr_gswitch_press;
    alarm[0] = 60;
    
    //Activate P-Switch events
    with (obj_levelcontrol) {
    
        alarm[7] = 700;
        event_user(3);
    }
    
    //Stop vertical movement
    with (obj_playerparent) vspeed = 0;
}

