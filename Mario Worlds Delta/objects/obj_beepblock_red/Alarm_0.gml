/// @description Animate

//Play 'Beep' sound, if not outside view
if (!outside_view(16)) {

    audio_stop_play_sound(snd_beep, 0, false);
}

//Animate it
image_speed = 0.2;

