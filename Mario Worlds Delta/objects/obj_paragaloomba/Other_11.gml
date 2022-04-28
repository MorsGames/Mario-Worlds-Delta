/// @description Turn into a regular galoomba

//Create a goomba
with (instance_create(x, y, obj_galoomba)) {

    hspeed = other.hspeed;
}

//Destroy
instance_destroy();

