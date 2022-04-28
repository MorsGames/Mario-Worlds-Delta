/// @description Turn into a regular goomba

//Create a goomba
with (instance_create(x, y, obj_goomba)) {

    hspeed = other.hspeed;
}

//Destroy
instance_destroy();

