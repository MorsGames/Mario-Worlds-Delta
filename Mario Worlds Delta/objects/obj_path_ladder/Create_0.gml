/// @description Map ladder

//Inherit event from parent
event_inherited();

//Create a climbinb mask
with (instance_create(x+4, y, obj_climb)) {

    image_xscale = 0.5;
    image_yscale = 0.5;
}

