/// @description Turn into a regular big koopa

//Create a goomba
with (instance_create(x, y, obj_bigkoopa)) {

    hspeed = other.hspeed;
}

//Destroy
instance_destroy();

