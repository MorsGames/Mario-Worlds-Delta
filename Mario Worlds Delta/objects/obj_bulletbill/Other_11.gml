/// @description Default stomp event

with (instance_create(round(bbox_left+bbox_right)/2, round(bbox_top+bbox_bottom)/2, obj_enemy_stomped)) {

    //Set the sprite
    sprite_index = other.stompsprite;
    
    //Set the frame
    image_index = other.image_index;
    
    //Set the facing direction
    image_xscale = 1;
}

//Destroy
instance_destroy();

