/// @description Throw a hammer

//Play 'Hammer' sound
audio_stop_play_sound(snd_hammer, 0, false);

//If the player does not exist or the player is at the left
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x) {

    with (instance_create(x+2, y-8, obj_hammerbro_hammer)) {
    
        hspeed = -1;
        image_xscale = -1;
    }
}
else {

    with (instance_create(x-2, y-8, obj_hammerbro_hammer)) {
    
        hspeed = 1;
        image_xscale = 1;
    }    
}

//Set throw pose
_throw = 2;

//Set default pose
alarm[5] = 7;

//Throw another hammer.
alarm[3] = 7+random(round(28));

