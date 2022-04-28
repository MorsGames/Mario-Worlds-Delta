/// @description Turn into a poof of smoke

//Create smoke effect
with (instance_create(x-8, y+4, obj_smoke)) {

    sprite_index = spr_smoke_16;
    image_index = 1;
}

//Destroy
instance_destroy();

