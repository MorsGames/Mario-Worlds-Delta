/// @description Leave a trail if moving

alarm[2] = 2;
if (speed > 0) {

    with (instance_create(x, y, obj_boo_trail)) {
    
        image_index = other.image_index;
        depth = -1;
        image_xscale = other.xscale;
    }
}

