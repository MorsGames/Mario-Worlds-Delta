/// @description Turn into a stunned bob-omb

//Create stunned galoomba
with (instance_create(x, y, obj_bobomb_held)) {

    //Set the sprite
    sprite_index = spr_nokobombette_down;
    
    //Set the death sprite
    deathsprite = spr_nokobombette_down;

    //Hereby scale
    dir = other.xscale;
}

//Destroy
instance_destroy();

