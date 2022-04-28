/// @description Stomp event

with (instance_create(round(bbox_left+bbox_right)/2, round(bbox_top+bbox_bottom)/2, obj_enemy_stomped)) {

    //Set the sprite
    sprite_index = other.stompsprite;
    
    //Set the facing direction
    image_xscale = other.xscale;
}

//Create poof of smoke
with (instance_create(x, y, obj_smoke)) {

    sprite_index = spr_lakitu_cloud_destroy;
    image_speed = 0.1;
    image_index = 0;
}

//Destroy
instance_destroy();

