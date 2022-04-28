/// @description Destroy

//Play 'Kick' sound
audio_stop_play_sound(snd_kick, 0, 0);

//Get 100 points
with (instance_create(x-8, y, obj_score)) event_user(1);

//Create smoke effect
with (instance_create(x, y, obj_smoke)) sprite_index = spr_smoke_16;

//Destroy
instance_destroy();

