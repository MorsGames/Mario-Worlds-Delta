/// @description Turn into a stunned bob-omb

//Create stunned galoomba
with (instance_create(x, y, obj_bobomb_held)) {

    //Set the sprite
    sprite_index = spr_bobomb_cannon;
    
    //Set death sprite
    deathsprite = spr_bobomb_cannon_dead;
    
    //Do not animate
    image_speed = 0;
    image_index = 0;

    //Hereby scale
    dir = other.xscale;
}

//Destroy
instance_destroy();

