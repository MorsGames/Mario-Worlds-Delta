/// @description Break out

//Play 'Break' sound
audio_stop_play_sound(snd_break, 0, false);

//Make a monty appear
with (instance_create(x,y,obj_monty_jump)) type = other.type;

//Create shards    
shard_create(x+8, y+8, spr_shard, 3, 6, 45);
shard_create(x+8, y+8, spr_shard, 1, 6, 60);
shard_create(x+8, y+8, spr_shard, 0, 6, 120);
shard_create(x+8, y+8, spr_shard, 2, 6, 135);

//Do stuff
if (sprite_index == spr_montymole_dig) {

    //Turn into a purely decorative hole
    sprite_index = spr_montymole_jump;
    
    //Do not animate
    image_speed = 0;
    image_index = 1;
}
else
    instance_destroy();

