/// @description 1-UP Ring

//Scale
scale = 0.25;

//Alpha
alpha = 1;

//Create spark effect
repeat (12) {

    with (instance_create(x, y, obj_sparkle)) {
    
        sprite_index = spr_sparkle_small_green;
        image_speed = 0.125;
        motion_set(random(360), random_range(0.5, 2));
    }
}

