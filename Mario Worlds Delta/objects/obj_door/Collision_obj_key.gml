/// @description If a key makes contact with this door...

//If the door is locked
if (lock == 1)
&& (other.held == true) {

    //Play 'Key' sound
    audio_stop_play_sound(snd_key, 0, false);
    
    //Set the sprite
    sprite_index = spr_door_lock_unlocked;

    //Unlock the door
    lock = 0;
    
    //With the key
    with (other) {
    
        //Play 'Bump' sound
        audio_stop_play_sound(snd_bump, 0, false);
        
        //Create a puff of smoke
        with (instance_create(x, y+8, obj_smoke)) sprite_index = spr_smoke_16;
        
        //Destroy
        instance_destroy();
    }
    
    //Create a puff of smoke
    with (instance_create(x+8, y, obj_smoke)) sprite_index = spr_smoke_16;
    
    //Remember it
    ds_map_add(global.doors, id, 1);
}

