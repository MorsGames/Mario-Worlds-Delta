/// @description Turn into a regular koopa

//Create a goomba
with (instance_create(x, y, obj_classickoopa)) {

    hspeed = other.hspeed;
}

//Destroy
instance_destroy();

