/// @description Spit fireballs

//Play 'Burn' sound
audio_stop_play_sound(snd_burn, 0, false);

//Create fireballs
with (instance_create(x, y+8, obj_plantfire2)) hspeed = 1;
with (instance_create(x, y+8, obj_plantfire2)) hspeed = -1;

