/// @description End P-Switch sequence

//If the switch effect is on
if (switchon == true) {

    //Turn off the P-Switch
    switchon = false;
    
    //Replace items
    pswitch_off();
    
    //Stop switch song
    audio_stop_sound(bgm_pswitch);
    
    //Set invincibility theme
    if (instance_exists(obj_invincibility)) {
    
        //If the invincibility timer is greater than 0
        if (obj_invincibility.alarm[0] > -1)
            with (obj_invincibility) alarm[2] = 2;
        
        //Otherwise, play default music
        else
            alarm[0] = 2;
    }
    
    //Otherwise, restart
    else if (gswitchon == 0)
        alarm[0] = 2;
}

