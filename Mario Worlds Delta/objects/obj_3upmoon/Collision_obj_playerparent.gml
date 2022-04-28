/// @description Collect the moon

//Create a sparkle
instance_create(x+8, y+8, obj_sparkle);

//Create score effect
with (instance_create(x, y, obj_score)) event_user(11); 

//Remember that the coin has been collected
ds_map_add(global.moons, id, 1);

//Destroy
instance_destroy();

