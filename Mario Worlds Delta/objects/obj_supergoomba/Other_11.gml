/// @description Brick goomba stomp script

//Play 'Break' sound
audio_play_sound(snd_break, 0, false);

//Create stomped enemy
with (instance_create(round(bbox_left+bbox_right)/2, round(bbox_top+bbox_bottom)/2, obj_enemy_stomped)) {

    //Set the sprite
    sprite_index = other.stompsprite;
    
    //Set the facing direction
    image_xscale = other.xscale;
}

//Destroy
instance_destroy();

//Create shards
with (instance_create(x, y+8, obj_shard))
    motion_set(45, 6);
with (instance_create(x, y+8, obj_shard))
    motion_set(60, 6);
with (instance_create(x, y+8, obj_shard))
    motion_set(120, 6);
with (instance_create(x, y+8, obj_shard))
    motion_set(135, 6);

