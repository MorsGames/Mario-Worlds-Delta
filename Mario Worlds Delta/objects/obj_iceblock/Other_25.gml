/// @description Shatter it

//Play 'Break' sound
audio_stop_play_sound(snd_break, 0, false);

//Create shards    
shard_create(x+8, y+8, spr_shard_ice, 3, 6, 45);
shard_create(x+8, y+8, spr_shard_ice, 1, 6, 60);
shard_create(x+8, y+8, spr_shard_ice, 0, 6, 120);
shard_create(x+8, y+8, spr_shard_ice, 2, 6, 135);
    
//Destroy
instance_destroy();

