/// @description Throw spiny

//Play 'Hammer' sound
audio_stop_play_sound(snd_hammer, 0, false);

//Set the frame
image_index = 1;

//Set next throw up
alarm[1] = 35;

//Make Spiny
with (instance_create(x, y, obj_spiny_thrown)) {

    vspeed = -3;
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        hspeed = -1.5;
    else
        hspeed = 1.5;    
}

