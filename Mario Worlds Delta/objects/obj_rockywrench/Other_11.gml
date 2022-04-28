/// @description Custom stomp script

with (instance_create(round(bbox_left+bbox_right)/2, round(bbox_top+bbox_bottom)/2, obj_enemy_stomped)) {

    //Set the sprite
    sprite_index = other.stompsprite;
    
    //Set the facing direction
    image_xscale = other.xscale;
    
    //Set depth
    depth = 10;
    
    //Set animation
    image_speed = 0.1;
}

//Destroy
instance_destroy();

