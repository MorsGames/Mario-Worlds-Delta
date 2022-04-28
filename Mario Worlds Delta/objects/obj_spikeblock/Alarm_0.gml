/// @description Show spikes

//Play 'Spikes Appear' sound, if not outside the view
if (!outside_view(16)) {

    audio_stop_play_sound(snd_spikes_appear, 0, false);
}

//Set frame
image_index = 1;
alarm[1] = 60;

