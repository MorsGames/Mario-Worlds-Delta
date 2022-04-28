/// @description Leave a trail

//Create effect
with (instance_create(x-6+random(12), y-6+random(12), obj_smoke)) {

    image_speed = 0.1;
    sprite_index = spr_sparkle_small_blue;
}

//Repeat the process
alarm[0] = 4;

