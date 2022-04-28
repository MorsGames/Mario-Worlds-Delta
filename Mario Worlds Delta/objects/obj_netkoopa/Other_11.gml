/// @description Custom stomp event

with (instance_create(x, y, obj_enemy_stomped)) {

    //Set the sprite
    sprite_index = other.stompsprite;
    
    //Set the facing direction
    image_xscale = other.xscale;
    
    //Set the depth
    depth = other.depth;
}

//Destroy
instance_destroy();

