/// @description Shatter it

//Play 'Break' sound
audio_stop_play_sound(snd_break, 0, false);

//Create shards    
shard_create(x+8, y+8, spr_shard_stone, 3, 6, 45);
shard_create(x+8, y+8, spr_shard_stone, 1, 6, 60);
shard_create(x+8, y+8, spr_shard_stone, 0, 6, 120);
shard_create(x+8, y+8, spr_shard_stone, 2, 6, 135);
    
//Destroy
instance_destroy();

