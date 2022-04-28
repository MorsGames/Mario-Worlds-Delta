/// @description Destroy

//Play 'Bump' sound
audio_stop_play_sound(snd_bump, 0, false);

//Create smoke effect
with (instance_create(bbox_left+bbox_right/2-8, bbox_top+bbox_bottom/2-8, obj_smoke)) {

    sprite_index = spr_smoke_16;
}

//Destroy
instance_destroy();

