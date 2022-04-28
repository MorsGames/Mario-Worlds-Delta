/// @description Turn into a stunned bob-omb

//Create stunned galoomba
with (instance_create(x, y, obj_bobomb_held)) {

    //Hereby scale
    dir = other.xscale;
}

//Destroy
instance_destroy();

