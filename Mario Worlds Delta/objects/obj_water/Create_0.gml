/// @description Water

//Animate
anim = 1;

//Create a water surface
water = instance_create(x, y+8, obj_swim);
with (water) {

    image_xscale = other.image_xscale;
    image_yscale = other.image_yscale-0.5;
}

