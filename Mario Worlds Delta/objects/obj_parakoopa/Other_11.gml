/// @description Turn into a regular koopa

//Create a goomba
with (instance_create(x, y, obj_koopa)) {

    hspeed = other.hspeed;
}

//Destroy
instance_destroy();

