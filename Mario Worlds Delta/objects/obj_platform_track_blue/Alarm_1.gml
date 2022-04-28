/// @description Destroy

//Play 'Clack' sound
audio_stop_play_sound(snd_clack, 0, false);

//Create a new block
with (instance_create(xstart, ystart, obj_platform_track_blue)) {

    //Create smoke at
    with (instance_create(x+16, y+16, obj_smoke)) sprite_index = spr_smoke_32;
}

//Create smoke
with (instance_create(x+16, y+16, obj_smoke)) sprite_index = spr_smoke_32;

//Destroy
instance_destroy();

