/// @description Cavern Water

//Create a water surface
water = instance_create(x, y+4, obj_swim);
with (water) {

    image_xscale = other.image_xscale;
    image_yscale = other.image_yscale;
}

