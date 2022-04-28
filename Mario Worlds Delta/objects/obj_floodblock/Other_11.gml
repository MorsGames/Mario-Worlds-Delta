/// @description Allow block to be hit again and make the tide move to this position

//Play 'Switch' sound
audio_stop_play_sound(snd_switch, 0, false);

//Allow block hit
alarm[2] = 24;

//Set tide target
with (obj_water_tides)
    targety = other.y-1;

