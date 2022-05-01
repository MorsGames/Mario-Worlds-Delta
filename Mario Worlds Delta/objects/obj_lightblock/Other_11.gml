/// @description Allow block to be hit again and light up the room

//Play 'Switch' sound
audio_stop_play_sound(snd_switch, 0, false);

//Allow block hit
ready = 0;

//Reset light
if (instance_exists(obj_controller_lighting))
    with (obj_controller_lighting) intensity = 128;

