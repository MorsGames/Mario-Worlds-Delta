/// @description Throw and start walking again

if xscale = -1 {

    with (instance_create(x+2, y-6, obj_drybones_bone)) {
    
        image_xscale = -1;
        hspeed = -2;

    }
}
else {

    with (instance_create(x-2, y-6, obj_drybones_bone)) {
    
        image_xscale = 1;
        hspeed = 2;
    }    
}

//Set normal sprite
sprite_index = spr_drybones;

//Start walking
alarm[10] = 5;

