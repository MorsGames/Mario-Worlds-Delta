/// @description Destroy the brick if it exists

if (mybrick != noone) {

    with (mybrick) {

        //Play 'Break' sound
        audio_stop_play_sound(snd_break, 0, false);
        
        //Create shards    
        shard_create(x, y+8, spr_shard_blue, 3, 6, 45);
        shard_create(x, y+8, spr_shard_blue, 1, 6, 60);
        shard_create(x, y+8, spr_shard_blue, 0, 6, 120);
        shard_create(x, y+8, spr_shard_blue, 2, 6, 135);
            
        //Destroy
        instance_destroy();    
    }
}

