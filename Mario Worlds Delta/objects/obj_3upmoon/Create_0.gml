/// @description 3UP Moon

//Animate
image_speed = 0.15;

//Destroy if this was collected before
if (ds_map_exists(global.moons, id))
    instance_destroy();

