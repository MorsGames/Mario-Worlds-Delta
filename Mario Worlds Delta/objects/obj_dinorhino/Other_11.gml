/// @description Turn into a dino-torch

with (instance_create(x, y, obj_dinotorch)) {

    xscale = other.xscale;
    image_speed = 0;
    image_index = 1;
    alarm[2] = 30;
    alarm[10] = 0;
}
instance_destroy();

