/// @description Thrown spiny logic

//Inherit event from parent
event_inherited();

//If not on the ground
if gravity != 0 {

    //Set gravity & alt grav
    if vspeed < -2.2
        gravity = 0.3;
    else
        gravity = 0.15;    
}

//If on the ground
if gravity != 0 {

    //Set thrown spiny sprite
    sprite_index = spr_spiny_thrown;
    
} else {

    //Create actual spiny on the ground
    instance_create(x, y, obj_spiny_alt);
    instance_destroy();    
}

