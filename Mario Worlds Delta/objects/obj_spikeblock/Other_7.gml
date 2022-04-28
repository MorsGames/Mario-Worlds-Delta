/// @description Stop animation and hide spikes after a while

//Play 'Spikes' sound if not outside the view
if (!outside_view(32)) {

    audio_stop_play_sound(snd_spikes, 0, false);    
}

//Do not animate
image_speed = 0;
image_index = 2;

//Hide spikes
alarm[2] = 180;

