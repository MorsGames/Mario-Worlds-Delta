/// @description Display message and delay block hit

//If this block is inside the view
if (!outside_view(16)) {
    
    //Play 'Message' sound
    audio_stop_play_sound(snd_message, 0, false);
    
    //Show message
    with (instance_create(0, 0, obj_message)) 
        ini_section = other.ini_section;
}

//Allow block hit
alarm[2] = 24;

