/// @description Break if hit with a holdable item

//Play 'Break' sound
audio_stop_play_sound(snd_break, 0, false);

//Get 50 coins
score += 50;

//Create shards    
shard_create(x+8, y+8, shardsprite, 0, 6, 45);
shard_create(x+8, y+8, shardsprite, 0, 6, 60);
shard_create(x+8, y+8, shardsprite, 0, 6, 120);
shard_create(x+8, y+8, shardsprite, 0, 6, 135);
    
//Destroy
instance_destroy();

