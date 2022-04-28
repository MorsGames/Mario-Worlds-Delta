/// @description Shoot a bullet

//If the blastakoopa is facing left
if (xscale < 0) {
    
    //Play 'Blastakoopa / Fire' sound
    audio_stop_play_sound(snd_blastakoopa_fire, 0, false);
    
    //Create missile bill
    mybullet = instance_create(x-8, y+8, obj_blastakoopa_bullet);                    
    with (mybullet) {
    
        hspeed = -1;
        with (instance_create(x, y, obj_smoke))
            sprite_index = spr_smoke_16;
    }
}

//Otherwise, if the blastakoopa is facing to the right
else if (xscale > 0) {
    
    //Play 'Blastakoopa / Fire' sound
    audio_stop_play_sound(snd_blastakoopa_fire, 0, false);
    
    //Create missile bill
    mybullet = instance_create(x+8, y+8, obj_blastakoopa_bullet);
    with (mybullet) {

        hspeed = 1;
        with (instance_create(x, y, obj_smoke))
            sprite_index = spr_smoke_16;
    }    
}

//Close mouth
alarm[4] = 30;

