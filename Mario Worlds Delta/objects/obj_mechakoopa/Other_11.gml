/// @description Turn into a stunned mecha koopa

//Create stunned galoomba
with (instance_create(x, y, obj_mechakoopa_held)) {

    //Hereby scale
    dir = other.xscale;
}

//Destroy
instance_destroy();

