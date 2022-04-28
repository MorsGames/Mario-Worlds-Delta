/// @description Destroy Fire Snake

//Create puff of smoke
with (instance_create(x, y+8, obj_smoke)) {

    sprite_index = spr_smoke_16;
}

//Destroy
instance_destroy();

