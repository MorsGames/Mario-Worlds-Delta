/// @description Break if hit with a holdable item

//Play 'Break' sound
audio_stop_play_sound(snd_break, 0, false);

//Get 50 coins
score += 50;

//Create shards    
shard_create(x+8, y+24, spr_shard, 3, 6, 45);
shard_create(x+8, y+24, spr_shard, 1, 6, 60);
shard_create(x+8, y+24, spr_shard, 0, 6, 120);
shard_create(x+8, y+24, spr_shard, 2, 6, 135);
    
//Destroy
instance_destroy();

