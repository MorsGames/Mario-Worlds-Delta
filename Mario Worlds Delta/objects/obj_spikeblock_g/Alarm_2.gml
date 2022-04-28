/// @description Hide spikes

image_index--;
if (image_index == 0)
    alarm[0] = 90;
else {

    alarm[2] = 5;
    if (image_index == 2)
    && (!outside_view(16))
        audio_stop_play_sound(snd_spikes_appear, 0, false);
}

