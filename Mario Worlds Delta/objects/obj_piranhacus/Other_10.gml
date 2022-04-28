/// @description Destroy Piranhacus

//Create puff of smoke
with (instance_create(x, y, obj_smoke)) {

    sprite_index = spr_smoke_32;
}

//Destroy
instance_destroy();

