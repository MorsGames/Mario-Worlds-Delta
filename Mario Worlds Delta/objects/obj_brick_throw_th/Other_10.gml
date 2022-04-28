/// @description Shatter it

//If this is a snow block
if (sprite_index == spr_pokey_snowball) {

    //Play 'Bump' sound
    audio_stop_play_sound(snd_bump, 0, false);

    //Repeat 8 times
    repeat (8) {
        
        with (instance_create(x+random_range(-8, 8), y+random(16), obj_cloud)) {
        
            gravity = 0.2;
            hspeed = random(2*sign(other.hspeed)*-1);
            vspeed = random_range(-4, 2);
        }
    }
}

//Otherwise
else {
    
    //Play 'Break' sound
    audio_stop_play_sound(snd_break, 0, false);
    
    //Create shards    
    shard_create(x, y+8, spr_shard_blue, 3, 6, 45);
    shard_create(x, y+8, spr_shard_blue, 1, 6, 60);
    shard_create(x, y+8, spr_shard_blue, 0, 6, 120);
    shard_create(x, y+8, spr_shard_blue, 2, 6, 135);
}
    
//Destroy
instance_destroy();

