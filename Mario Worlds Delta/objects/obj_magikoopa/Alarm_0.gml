/// @description Throw the spell

//If not inside view
if (!outside_view(16)) {
    
    //Play 'Transform' sound
    audio_play_sound(snd_beam, 0, false);
    
    //Create spell
    instance_create(x+16*sign(xscale), y, obj_magic);
}

//Animate
image_speed = 0.15;
image_index = 2;

//Dissappear
alarm[1] = 60;

