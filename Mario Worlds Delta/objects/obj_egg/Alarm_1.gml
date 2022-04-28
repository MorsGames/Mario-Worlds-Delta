/// @description Break it

///Create egg bits
shard_create(x, y+8, spr_egg_shard, 3, 6, 45);
shard_create(x, y+8, spr_egg_shard, 1, 6, 60);
shard_create(x, y+8, spr_egg_shard, 0, 6, 120);
shard_create(x, y+8, spr_egg_shard, 2, 6, 135);

//Make it invisible
visible = 0;

//A Yoshi has born
alarm[2] = 16;

//Create some smoke
with (instance_create(x, y+8, obj_smoke)) 
    sprite_index = spr_smoke_16;

