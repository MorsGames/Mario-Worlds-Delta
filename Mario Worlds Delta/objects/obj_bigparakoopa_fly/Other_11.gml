/// @description Turn into a regular koopa

//Create a goomba
with (instance_create(x, y, obj_bigkoopa)) {

    hspeed = 0.5*other.xscale;
}

//Destroy
instance_destroy();

