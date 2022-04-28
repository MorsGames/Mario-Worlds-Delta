/// @description Destroy

//Play 'Bump' sound
audio_stop_play_sound(snd_bump, 0, 0);

//Create smoke effect
with (instance_create(x, y, obj_smoke)) sprite_index = spr_smoke_16;

//Destroy
instance_destroy();

