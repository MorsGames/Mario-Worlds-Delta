/// @description Turn into a stunned galoomba

//Create stunned galoomba
with (instance_create(x, y, obj_galoomba_held)) {

    //Hereby scale
    dir = other.xscale;
}

//Destroy
instance_destroy();

