/// @description Active "P" Platform

//Do not animate
image_speed = 0;

//If the level controller exists
if (instance_exists(obj_controller_level)) {

    //Become solid if the pswitch is not active
    if (obj_controller_level.switchon == 0) {
    
        mysolid = instance_create(x,y,obj_solid);
        image_index = 0;
    }
    
    //Otherwise, be an outline
    else {
    
        mysolid = noone;
        image_speed = 0.15;
    }
}

