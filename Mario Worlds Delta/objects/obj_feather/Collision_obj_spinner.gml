/// @description Turn into a falling feather

//If moving down
if (vspeed >= 0) {

    //Create a real feather
    instance_create(x, y, obj_feather_sprout);
    
    //Destroy
    instance_destroy();
}

