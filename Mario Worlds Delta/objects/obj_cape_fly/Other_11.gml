/// @description Glide up

//Play 'Cape' sound
audio_stop_play_sound(snd_capefly, 0, false);

//If not smashing
if (smash == 0)

    vspeed_goal = -3;
    
//Otherwise, if smashing
else if (smash == 1) {

    switch (charge_amount) {
    
        default: vspeed_goal = -3; break;
        case (4): vspeed_goal = -4; break;
        case (5): vspeed_goal = -6; break;
        
    }
}

//Return to normal state
smash = 0;

