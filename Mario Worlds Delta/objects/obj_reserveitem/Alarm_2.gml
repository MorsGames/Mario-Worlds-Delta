/// @description Sprite Check

//If this is a mushroom
if (sprite_index == spr_mushroom)
    image_index = 1;

//Otherwise, if this is a fire flower
else if (sprite_index == spr_fireflower)
    image_speed = 0.15;

//Otherwise, if this is a feather
else if (sprite_index == spr_feather) {
    
    //Turn into a real feather
    with (instance_create(x, y, obj_feather_sprout)) {
    
        nopoints = true;
        alarm[1] = 1;
    }
    
    //Destroy
    instance_destroy();
}

//Otherwise, if this is a ice flower
else if (sprite_index == spr_iceflower)
    image_speed = 0.15;

