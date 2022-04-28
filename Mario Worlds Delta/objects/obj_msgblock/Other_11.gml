/// @description Display message and delay block hit

//If this block is inside the view
if (!outside_view(16)) {
    
    //Play 'Message' sound
    audio_stop_play_sound(snd_message, 0, false);
    
    //Show message
    with (instance_create(0, 0, obj_message)) 
        inisection = other.inisection;
}

//Allow block hit
alarm[2] = 24;

