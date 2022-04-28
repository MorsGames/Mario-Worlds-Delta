/// @description Make the block rotate

//Turn into a flipping block
with (instance_create(x, y, obj_brick_flip_b)) {

    sprite_index = spr_brick_flip_big;
}

//Destroy
instance_destroy();

