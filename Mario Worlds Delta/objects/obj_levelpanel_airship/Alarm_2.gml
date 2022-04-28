/// @description Turn into a destroyed airship

//Play 'Destroy' sound
audio_stop_play_sound(snd_destroy, 0, false);

//Turn into a stomped switch
sprite_index = spr_levelpanel_airship_beaten;

//Mark as beaten
beaten = 2;

//Create smoke effect
with (instance_create(x, y, obj_smoke)) {

    sprite_index = spr_smoke_32;
    depth = other.depth - 1;
}

with (obj_mapplayer) alarm[1] = 60;

