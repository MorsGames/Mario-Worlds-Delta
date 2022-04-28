/// @description Break

//Play 'Break' sound
audio_stop_play_sound(snd_break, 0, false);

//Get 50 coins
score += 50;

//Create shards    
shard_create(x+8, y+8, spr_shard_fragile, 3, 6, 45);
shard_create(x+8, y+8, spr_shard_fragile, 1, 6, 60);
shard_create(x+8, y+8, spr_shard_fragile, 0, 6, 120);
shard_create(x+8, y+8, spr_shard_fragile, 2, 6, 135);
    
//Destroy
instance_destroy();

