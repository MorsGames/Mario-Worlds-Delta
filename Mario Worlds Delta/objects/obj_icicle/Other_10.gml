/// @description Create a new icicle

//Create a ticker for the new donut
with (instance_create(xstart+8, ystart, obj_donut_ticker)) {

    sprite_index = spr_icicle_appear;
}

//Destroy
instance_destroy();

