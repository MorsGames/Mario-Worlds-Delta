/// @description Shoot Bullet Bill
    
//If the player is at the left
if (obj_playerparent.x < x) {
    
    //Play 'Explosion' sound
    audio_stop_play_sound(snd_explosion, 0, false);
    
    //Create bullet bill
    with (instance_create(x-8, y, obj_bulletbill)) {
    
        image_index = 4;
        hspeed = -2;
        with (instance_create(x+8, y+8, obj_smoke))
            sprite_index = spr_smoke_16;
    }
}

//Otherwise, if the player is at the right
else if (obj_playerparent.x > x) {
    
    //Play 'Explosion' sound
    audio_stop_play_sound(snd_explosion, 0, false);
    
    //Create bullet bill
    with (instance_create(x-8, y, obj_bulletbill)) {
    
        image_index = 0;
        hspeed = 2;
        with (instance_create(x+8, y+8, obj_smoke))
            sprite_index = spr_smoke_16;
    }        
}

