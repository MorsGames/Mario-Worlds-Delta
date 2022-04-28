/// @description Turn into a destroyed castle

//Play 'Destroy' sound
audio_stop_play_sound(snd_destroy, 0, false);

//Turn into a stomped switch
image_index = 1;

//Mark as beaten
beaten = 2;

//Create smoke effect
with (instance_create(x+8, y+8, obj_smoke)) {

    sprite_index = spr_smoke_32;
    depth = other.depth - 1;
}

with (obj_mapplayer) alarm[1] = 60;

