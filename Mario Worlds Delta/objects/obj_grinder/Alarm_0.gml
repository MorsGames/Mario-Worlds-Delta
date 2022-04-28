/// @description Play 'Engine' sound

//Repeat the process
alarm[0] = 4;

//Play 'Engine' sound
if (!outside_view(16))
&& (!audio_is_playing(snd_engine))
    audio_stop_play_sound(snd_engine, 0, false);

