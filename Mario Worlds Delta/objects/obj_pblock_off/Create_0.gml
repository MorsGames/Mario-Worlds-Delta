/// @description Inactive "P" Platform

//Change the sprite
sprite_index = spr_pblock;

//Do not animate
image_speed = 0;

//Solid
mysolid = noone;

//IF the level controller exists
if (instance_exists(obj_levelcontrol)) {

    //Become solid if the pswitch is active
    if (obj_levelcontrol.switchon == 1) {
    
        mysolid = instance_create(x, y, obj_solid)
        image_index = 0;
    }
    
    //Otherwise, be an outline
    else {
    
        mysolid = noone;
        image_speed = 0.15;
    }
}

