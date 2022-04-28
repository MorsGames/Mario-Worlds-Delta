/// @description End Gray P-Switch sequence

//If the switch effect is on
if (gswitchon == true) {

    //Turn munchers into coins
    with (obj_muncher) event_user(1);

    //Turn off the P-Switch
    gswitchon = false;
    
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
    else if (switchon == 0)
        alarm[0] = 2;
}

