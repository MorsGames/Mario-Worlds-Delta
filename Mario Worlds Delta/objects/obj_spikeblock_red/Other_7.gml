/// @description Stop animation and wait until then

//Play 'Spikes' sound if not outside the view
if (!outside_view(32)) {

    audio_stop_play_sound(snd_spikes, 0, false);    
}

//Do not animate
image_speed = 0;
image_index = 2;

