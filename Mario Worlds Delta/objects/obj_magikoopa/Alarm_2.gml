/// @description Generate sparkles

alarm[2] = 4;
if (image_index == 1) {

    with (instance_create(x-6+random(12), y-10+random(12), obj_smoke)) {
    
        image_speed = 0.1;
        sprite_index = spr_sparkle_small_blue;
    }
}

