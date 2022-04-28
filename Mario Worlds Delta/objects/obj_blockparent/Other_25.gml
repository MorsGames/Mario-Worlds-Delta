/// @description Bomb destroy / Bump with explosion

//If this block can be shattered with a explosion
if (shardsprite != noone) {
    
    //Play 'Break' sound
    audio_stop_play_sound(snd_break, 0, false);
    
    //Create shards    
    shard_create(x+8, y+8, shardsprite, 3, 6, 45);
    shard_create(x+8, y+8, shardsprite, 1, 6, 60);
    shard_create(x+8, y+8, shardsprite, 0, 6, 120);
    shard_create(x+8, y+8, shardsprite, 2, 6, 135);
        
    //Destroy
    instance_destroy();
}

//Otherwise, bump it
else {

    //If not bumped
    if (ready == 0) {
    
        //Begin bump sequence
        vspeed = -2.25;
        alarm[0] = 4;
        
        //Block is hit
        ready = 1;
        
        //Perform block events
        event_user(0);
    }
}

