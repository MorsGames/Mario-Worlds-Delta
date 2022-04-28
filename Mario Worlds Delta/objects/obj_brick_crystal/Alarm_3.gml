/// @description Break if hit with a holdable item

//If the block has not been hit before
if (sprite_index == spr_brick_crystal) {

    sprite_index = spr_brick_crystal_hit;
    image_speed = 0;
    image_index = 0;
}

else {

    //Play 'Icicle Break' sound
    audio_stop_play_sound(snd_icicle_break, 0, false);
    
    //Get 50 coins
    score += 50;
    
    //Create shards    
    shard_create(x+8, y+8, shardsprite, 3, 6, 45);
    shard_create(x+8, y+8, shardsprite, 1, 6, 60);
    shard_create(x+8, y+8, shardsprite, 0, 6, 120);
    shard_create(x+8, y+8, shardsprite, 2, 6, 135);
        
    //Destroy
    instance_destroy();
}

