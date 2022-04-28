/// @description Turn into a real coin

with (instance_create(x, y, obj_coin)) {

    image_index = obj_coin.image_index;
}
instance_destroy();

