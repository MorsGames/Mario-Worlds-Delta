/// @description Throw a boomerang

//Play 'Hammer' sound
audio_stop_play_sound(snd_hammer, 0, false);

//If the player does not exist or the player is at the left
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x) {

    with (instance_create(x+2, y-2, obj_boomerangbro_boomerang)) {
    
        parent = other.id;
        hspeed = -2;
        image_xscale = -1;
    }
}
else {

    with (instance_create(x-2, y-2, obj_boomerangbro_boomerang)) {
    
        parent = other.id;
        hspeed = 2;
        image_xscale = 1;
    }    
}

//Set throw pose
_throw = 2;

//Set default pose
alarm[5] = 7;

//Throw another boomerang.
if (throw2 == 0) {

    throw2 = 1;
    alarm[3] = 90
}
else if (throw2 == 1) {

    throw2 = 0;
    alarm[3] = 180;
}

