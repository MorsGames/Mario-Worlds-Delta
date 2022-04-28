/// @description Shatter
    
//Play 'Icicle Break' sound
audio_stop_play_sound(snd_icicle_break, 0, false);

//Create shards    
shard_create(x+sprite_width/2, y+sprite_width/2, spr_shard_ice, 3, 6, 45);
shard_create(x+sprite_width/2, y+sprite_width/2, spr_shard_ice, 1, 6, 60);
shard_create(x+sprite_width/2, y+sprite_width/2, spr_shard_ice, 0, 6, 120);
shard_create(x+sprite_width/2, y+sprite_width/2, spr_shard_ice, 2, 6, 135);

//Create sparks
repeat(32) {

    with (instance_create(bbox_left+sprite_width/2-4, bbox_top+sprite_height/2-4, obj_smoke)) {
    
        //Sprite
        sprite_index = spr_sparkle_small_blue;
        
        //Animate
        image_speed = 0.1;
        
        //Motion
        motion_set(random(360), random(1));
    }
}
    
//Destroy
instance_destroy();

