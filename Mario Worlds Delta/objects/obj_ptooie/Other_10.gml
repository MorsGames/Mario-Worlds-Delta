/// @description Destroy Piranha Plant

//Create puff of smoke
with (instance_create(x, y, obj_smoke)) {

    sprite_index = spr_smoke_16;
}

//Destroy
instance_destroy();

