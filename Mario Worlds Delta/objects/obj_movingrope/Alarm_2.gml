/// @description Play 'Engine' sound

//Repeat the process
alarm[2] = 15;

//Set smoke position
post = !post;

//Generate smoke effect
with (instance_create(x+4+(post*8), y, obj_smoke)) {

    sprite_index = spr_smoke;
    image_speed = 0.15;
}

//Play 'Engine' sound
if (state == "IN_LINE")
&& (!outside_view(16))
&& (!audio_is_playing(snd_engine))
    audio_stop_play_sound(snd_engine, 0, false);

