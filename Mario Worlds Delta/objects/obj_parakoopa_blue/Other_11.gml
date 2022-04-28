/// @description Turn into a regular koopa

//Create a goomba
with (instance_create(x, y, obj_koopa_blue)) {

    hspeed = 1*other.xscale;
}

//Destroy
instance_destroy();

