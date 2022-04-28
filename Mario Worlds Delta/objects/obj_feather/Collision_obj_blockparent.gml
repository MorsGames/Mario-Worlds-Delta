/// @description Turn into a falling feather

//If the block is moving up
if (other.vspeed < 0)
&& (vspeed >= 0)
&& (y < other.bbox_top-11) {

    //Create a real feather
    instance_create(x, y, obj_feather_sprout);
    
    //Destroy
    instance_destroy();
}

