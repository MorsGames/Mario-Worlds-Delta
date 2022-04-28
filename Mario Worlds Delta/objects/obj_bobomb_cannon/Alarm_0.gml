/// @description Turn into a holdable bomb and detonate at the instance

//Create stunned bobomb
with (instance_create(x, y, obj_bobomb_held)) {

    //Set the sprite
    sprite_index = spr_bobomb_cannon;
    
    //Set the death sprite
    deathsprite = other.deathsprite;
    
    //Do not animate
    image_speed = 0;
    image_index = 0;
    
    //Detonate at the instant
    alarm[0] = 30;
    alarm[1] = 150;

    //Hereby scale
    dir = other.xscale;
}

//Destroy
instance_destroy();

