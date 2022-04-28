/// @description Shatter it

//Play 'Icicle Break' sound
audio_stop_play_sound(snd_icicle_break, 0, false);

//Create smoke
with (instance_create(x+8, y+16, obj_smoke)) sprite_index = spr_smoke_16;

//Create shards    
repeat (32) {

    with (instance_create(x+random(16), y+random(32), obj_icicle_shard)) {
    
        motion_set(random(360), random(1));
    }
}
    
//Destroy
instance_destroy();

