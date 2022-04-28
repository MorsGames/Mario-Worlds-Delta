/// @description Throw a hammer

//Play 'Hammer' sound
audio_stop_play_sound(snd_hammer, 0, false);

//If the player does not exist or the player is at the left
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x) {

    with (instance_create(x+15, y-22, obj_hammerbro_hammer)) {
    
        hspeed = -1;
        image_xscale = -1;
    }
}
else {

    with (instance_create(x-15, y-22, obj_hammerbro_hammer)) {
    
        hspeed = 1;
        image_xscale = 1;
    }    
}

//Replace sprite
sprite_index = spr_sledgebro;

//Set the throwing pose
alarm[3] = 60;

