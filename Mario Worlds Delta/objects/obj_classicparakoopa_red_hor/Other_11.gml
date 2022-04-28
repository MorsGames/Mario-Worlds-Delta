/// @description Turn into a regular koopa

//Create a goomba
with (instance_create(x, y, obj_classickoopa_red)) {

    hspeed = 0.5*sign(other.hspeed);
}

//Destroy
instance_destroy();

