/// @description Toad's logic

//Inherit event from parent
event_inherited();

//Charge when crouched down
if (crouch == true)
&& (state != statetype.jump) {

    //Increment timer
    squat_time++;
    
    //If the squat time is greater than 120, allow big jump
    if (squat_time > 120) 
    && (squat_ready == 0) {
    
        //Play 'Charge' sound
        audio_stop_play_sound(snd_charge, 0, false);
    
        //Set the squat state
        squat_ready = 1;
    }
}
else {

    squat_time = 0;
    if (squat_ready != 2)
        squat_ready = 0;    
}

