/// @description Generate bubble

//Repeat the process
alarm[1] = 1+round(random(7));

//Create effect
with (instance_create(x, bbox_top, obj_twister_bubble)) {

    //Parent
    parent = other.id;
}

