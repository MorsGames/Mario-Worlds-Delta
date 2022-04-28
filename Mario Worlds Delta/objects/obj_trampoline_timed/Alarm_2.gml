/// @description Destroy

//Play 'Bump' sound
audio_play_sound(snd_bump, 0, false);

//Create new trampoline
with (instance_create(xstart, ystart, obj_trampoline_timed)) time = other.time;

//Create smoke
with (instance_create(x, y+8, obj_smoke)) sprite_index = spr_smoke_16;

//Destroy
instance_destroy();

